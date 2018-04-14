require_relative 'seeds/list_to_hash.rb'

icd10s = ICD10Gen.new

icd10s.chapters.each do |chap|
  chapter = Chapter.create!(chapter_number: chap['name'],description: chap['desc'])
  puts chap['sectionIndex']['sectionRef'].last['_last']
  parents = icd10s.parents
  loop do
    code = parents.shift
    cd = Code.create!(code)
    chapter.codes << cd
    chapter.save!
    break if code[:code_id] == chap['sectionIndex']['sectionRef'].last['_last']
  end
end

icd10s.children.each{ |code| puts Code.create!(code) }
icd10s.children_2.each{ |code| puts Code.create!(code) }
icd10s.children_3.each{ |code| puts Code.create!(code) }
