Profile.delete_all
Benefit.delete_all
BenefitCategory.delete_all

Profile.create!({title: 'Iнвалiд вiйни'})
Profile.create!({title: 'Інвалід Великої Вітчизняної війни'})
Profile.create!({title: 'Інвалід війни з Японією'})
Profile.create!({title: 'Iнвалiд 1 группи'})
Profile.create!({title: 'Iнвалiд 2 группи'})
afgan = Profile.create!({title: 'Учасник бойових дiй'})
Profile.create!({title: 'Учасник вiйни'})
Profile.create!({title: 'Чорнобилец 1 категории'})

compensation =BenefitCategory.create!({title: 'компенсация'})
lgota = BenefitCategory.create!({title: 'льгота'})
skidka = BenefitCategory.create!({title: 'скидка'})
social = BenefitCategory.create!({title: 'социальная помощь'})
subsidia = BenefitCategory.create!({title: 'субсидия'})

benefits_afgan = []

benefit = Benefit.create!({title: 'Плата   за  користування  житлом (квартирна плата)', description: 'Ця  знижка надається в межах норм, передбачених чинним законодавством (21 кв.  метр загальної площі житла на кожну особу,  яка  постійно проживає  у  житловому  приміщенні (будинку)  та додатково  10,5 кв. метра на сімю)'})
benefit.benefit_category = skidka
benefit.save!
benefits_afgan << benefit

benefit = Benefit.create!({title: 'Плата  за користування комунальними послугами', description: 'Ця знижка надається на плату  за користування газом,   електроенергією   та  іншими  послугами, а також скрапленим  балонним  газом  для побутових потреб в межах середніх норм  споживання'})
benefit.benefit_category = skidka
benefit.save!
benefits_afgan << benefit

benefit = Benefit.create!({title: 'Безплатний  проїзд на транспорті', description: 'Безплатний  проїзд  надається на усі види міського пасажирського транспорту,  автомобільний транспорт загального користування в сільській  місцевості,  а  також  залізничний і водний транспорт приміського  сполучення  та  автобуси  приміських  і  міжміських маршрутів,  у  тому  числі внутрірайонних,  внутріобласних та міжобласних незалежно  від  відстані  та  місця  проживання'})
benefit.benefit_category = lgota
benefit.save!
benefits_afgan << benefit

benefit = Benefit.create!({title: 'Першочергове  безплатне  зубопротезування', description: 'Пільга не застосовується до протезування з дорогоцінних металів'})
benefit.benefit_category = lgota
benefit.save!
benefits_afgan << benefit

afgan.benefits = benefits_afgan

#benefit = Benefit.create!({title: '', description: ''})
#benefit.benefit_category = subsidia
#benefit.save!
#
#benefit = Benefit.create!({title: '', description: ''})
#benefit.benefit_category = lgota
#benefit.save!