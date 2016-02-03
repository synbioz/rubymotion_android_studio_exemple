def generate_description_text options={}
  "#{options[:name].capitalize} a #{options[:age]} ans. Il pése #{options[:weight]}kg pour une taille de #{options[:height]}m."
end

def calcul_imc(weight, size)
  (weight.to_i / (size.to_f * size.to_f)).round(2).to_s
end

def imc_category(imc)
  i = imc.to_f
  case
  when i > 40
    "obésité morbide ou massive"
  when i >= 35
    "obésité sévère"
  when i >= 30
    "obésité modérée"
  when i >= 25
    "surpoids"
  when i >= 18.5
    "corpulence normale"
  when i >= 16.5
    "maigreur"
  else
    "famine"
  end
end