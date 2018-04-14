require_relative 'seeds/list_to_hash.rb';

icd10s = ICD10Gen.new

icd10s.chapters.each do |chap|
  chapter = Chapter.create!(chapter_number: chap['name'],description: chap['desc'])
  puts chapter
  icd10s.parents.each do |code|
    cd = Code.create!(code)
    chapter.codes << cd
    puts cd
  end
end

icd10s.children.each{ |code| puts Code.create!(code) }
icd10s.children_2.each{ |code| puts Code.create!(code) }
icd10s.children_3.each{ |code| puts Code.create!(code) }

puts "hey there"
