class DisplayResultImcActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    setContentView(R::Layout::Result_layout)
    puts intent.getStringExtra('name')
  end
end