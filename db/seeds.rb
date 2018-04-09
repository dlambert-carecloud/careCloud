# require_relative 'seeds/list_to_hash.rb'
require_relative 'seeds/chap.rb'

# icd10s = ICD10Gen.new
icd10c = ICD10Chap.new

icd10s.parents.each{ |code| puts Code.create!(code) }
icd10s.children.each{ |code| puts Code.create!(code) }
icd10s.children_2.each{ |code| puts Code.create!(code) }
icd10s.children_3.each{ |code| puts Code.create!(code) }


icd10c.chap.each{ |chap| puts Chapter.create!(chap)}
