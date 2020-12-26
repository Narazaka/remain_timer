class DurationFormat
  SECONDS_PER_DAY = 86400
  SECONDS_PER_HOUR = 3600
  SECONDS_PER_MINUTE = 60
  PARTS = %i[day hour min sec].freeze
  PARTS_IN_SECONDS = {
    sec: 1,
    min: SECONDS_PER_MINUTE,
    hour: SECONDS_PER_HOUR,
    day: SECONDS_PER_DAY,
  }.freeze

  def self.build_parts(value)
    # @type var parts: { day: Integer, hour: Integer, min: Integer, sec: Float }
    parts = {}
    # @type var remainder: Integer | Float
    remainder = value.to_f

    PARTS.each do |part|
      next if part == :sec
      part_in_seconds = PARTS_IN_SECONDS[part]
      parts[part] = remainder.div(part_in_seconds)
      remainder = (remainder % part_in_seconds).round(9)
    end

    parts[:sec] = remainder

    parts
  end

  def self.format(value)
    parts = build_parts(value)
    (parts[:day] > 0 ? "#{parts[:day]}day " : "") +
    sprintf('%02d:%02d:%02d', parts[:hour], parts[:min], parts[:sec].round)
  end
end
