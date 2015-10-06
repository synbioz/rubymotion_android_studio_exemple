class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    setContentView(R::Layout::Main_layout)

    @name   = self.findViewById(R::Id::EditName).text
    @weight = self.findViewById(R::Id::EditWeight).text
    @height = self.findViewById(R::Id::EditHeight).text

    imcButton = self.findViewById R::Id::ButtonCalculate
    imcButton.onClickListener = self
  end

  def onClick(view)
    intent = Android::Content::Intent.new(self, DisplayResultImcActivity)
    intent.putExtra('name', @name)
    startActivity intent
  end
end
