class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    setTitle('Android Studio')
    setContentView(R::Layout::Main_layout)

    imcButton = self.findViewById R::Id::ButtonCalculate
    imcButton.onClickListener = self
  end

  def onClick(view)
    name   = self.findViewById(R::Id::EditName).text.toString
    weight = self.findViewById(R::Id::EditWeight).text.toString
    height = self.findViewById(R::Id::EditHeight).text.toString
    age    = self.findViewById(R::Id::EditAge).text.toString

    intent = Android::Content::Intent.new(self, DisplayResultImcActivity)
    intent.putExtra('name', name)
    intent.putExtra('weight', weight)
    intent.putExtra('height', height)
    intent.putExtra('age', age)

    startActivity intent
  end
end
