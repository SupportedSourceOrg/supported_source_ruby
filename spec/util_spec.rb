describe SuperSource::Util do
  describe "underscore_to_camelcase" do
    it "converts strings from underscore to camelcase" do
      expect(SuperSource::Util.underscore_to_camelcase('something')).to eq("Something")
      expect(SuperSource::Util.underscore_to_camelcase('my_test')).to eq("MyTest")
      expect(SuperSource::Util.underscore_to_camelcase('something_with__more__underscores_')).to eq("SomethingWithMoreUnderscores")
    end
  end

  describe "camelcase_to_underscore" do
    it "converts strings from camelcase to underscore" do
      expect(SuperSource::Util.camelcase_to_underscore('Something')).to eq("something")
      expect(SuperSource::Util.camelcase_to_underscore('MyTest')).to eq("my_test")
      expect(SuperSource::Util.camelcase_to_underscore('AReallyReallyLongWordVAR3')).to eq("a_really_really_long_word_var3")
    end
  end
end
