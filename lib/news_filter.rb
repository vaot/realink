class NewsFilter
  def self.types
    types = Dir.entries(File.join(Rails.root, "lib", "rss_parser"))
    types = types.select{ |t| t != '.' && t != '..' && t != "base.rb" }
    types.map {|d| d.match(/(.+).rb/)[1] }
  end

  def self.sub_types
    [].tap do |result|
      types.each do |type|
        normalized_type = type.capitalize
        klass = "RssParser::#{normalized_type}".constantize

        klass.availables.each do |sub_type|
          result << "#{type}_#{sub_type.to_s}"
        end
      end
    end
  end

  def initialize(query_type, query_sub_type)
    @query_type = query_type
    @query_sub_type = query_sub_type
  end

  # This could be drastically improved, but since time is
  # precious here and this needs to be done by friday, this
  # will do.
  def get
    raw_data = [].tap do |result|
      if is_all_scope?
        self.class.sub_types.each do |sub_type|
          result.push(*Redis.current.zrange(sub_type, 0, -1))
        end
      else
        if query_by_type?
          if @query_sub_type != "all"
            result.push(*Redis.current.zrange(get_redis_key, 0, -1))
          else
            scoped_types.each do |sub_type|
              result.push(*Redis.current.zrange(sub_type, 0, -1))
            end
          end
        else
          scoped_subtypes.each do |sub_type|
            result.push(*Redis.current.zrange(sub_type, 0, -1))
          end
        end
      end
    end

    normalize(raw_data)
  end

  private

  def query_by_type?
    @query_type.present? && @query_type != "all"
  end

  def is_all_scope?
    @query_type == "all" && @query_sub_type.blank? ||
      @query_sub_type == "all" && @query_type.blank?
  end

  def normalize(raw_data)
    raw_data.map { |e| JSON.parse(e) }
  end

  def get_redis_key
    "#{@query_type}_#{@query_sub_type}"
  end

  def scoped_subtypes
    self.class.sub_types.select { |sub_type| sub_type.match(/#{@query_sub_type}/).present? }
  end

  def scoped_types
    self.class.sub_types.select { |sub_type| sub_type.match(/#{@query_type}/).present? }
  end
end
