class ICD10Chap

  attr_accessor :chap

  def initialize
    @chap = []
    @data = JSON.parse(File.read("#{Rails.root}/db/seeds/list.json"))
    @chapters =  @data["ICD10CM.tabular"]['chapter']
    generate
  end

  def generate
    @chapters.each do |chapter|
      chap << {chapter_number: chapter['name'], description: chapter['desc']}
    end
  end
end
