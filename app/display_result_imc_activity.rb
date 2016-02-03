class DisplayResultImcActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    setTitle('Votre IMC')
    setContentView(R::Layout::Result_layout)

    options = {
      name: intent.getStringExtra('name'),
      age: intent.getStringExtra('age'),
      weight: intent.getStringExtra('weight'),
      height: intent.getStringExtra('height')
    }

    textResult      = self.findViewById(R::Id::TextResult)
    textImc         = self.findViewById(R::Id::TextImc)
    textImcCategory = self.findViewById(R::Id::TextImcCategory)
    imc             = calcul_imc(options[:weight], options[:height])

    textResult.text      = generate_description_text(options)
    textImc.text         = imc
    textImcCategory.text = imc_category(imc)
  end
end