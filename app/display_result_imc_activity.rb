class DisplayResultImcActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    setContentView(R::Layout::Result_layout)

    textResult = self.findViewById(R::Id::TextResult)
    textResult.text = intent.getStringExtra('name')
  end
end