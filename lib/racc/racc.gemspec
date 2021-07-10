# -*- encoding: utf-8 -*-

begin
  require_relative "lib/racc/info"
rescue LoadError # Fallback to load version file in ruby core repository
  require_relative "info"
end

Gem::Specification.new do |s|
  s.name = "racc"
  s.version = Racc::VERSION
  s.summary = "Racc is a LALR(1) parser generator"
  s.description = <<DESC
Racc is a LALR(1) parser generator.
  It is written in Ruby itself, and generates Ruby program.

  NOTE: Ruby 1.8.x comes with Racc runtime module.  You
  can run your parsers generated by racc 1.4.x out of the
  box.
DESC
  s.authors = ["Minero Aoki", "Aaron Patterson"]
  s.email = [nil, "aaron@tenderlovemaking.com"]
  s.homepage = "http://i.loveruby.net/en/projects/racc/"
  s.licenses = ["Ruby", "BSD-2-Clause"]
  s.executables = ["racc"]
  s.files = [
    "COPYING", "ChangeLog",
    "README.ja.rdoc", "README.rdoc", "Rakefile", "TODO", "bin/racc",
    "ext/racc/MANIFEST",
    "ext/racc/com/headius/racc/Cparse.java", "ext/racc/cparse/cparse.c",
    "ext/racc/cparse/extconf.rb",
    "lib/racc.rb", "lib/racc/compat.rb",
    "lib/racc/debugflags.rb", "lib/racc/exception.rb",
    "lib/racc/grammar.rb", "lib/racc/grammarfileparser.rb",
    "lib/racc/info.rb", "lib/racc/iset.rb",
    "lib/racc/logfilegenerator.rb", "lib/racc/parser-text.rb",
    "lib/racc/parser.rb", "lib/racc/parserfilegenerator.rb",
    "lib/racc/pre-setup", "lib/racc/sourcetext.rb",
    "lib/racc/state.rb", "lib/racc/statetransitiontable.rb",
    "lib/racc/static.rb", "doc/en/NEWS.en.rdoc",
    "doc/en/grammar.en.rdoc", "doc/ja/NEWS.ja.rdoc",
    "doc/ja/command.ja.html", "doc/ja/debug.ja.rdoc",
    "doc/ja/grammar.ja.rdoc", "doc/ja/index.ja.html",
    "doc/ja/parser.ja.rdoc", "doc/ja/usage.ja.html",
    "sample/array.y", "sample/array2.y", "sample/calc-ja.y",
    "sample/calc.y", "sample/conflict.y", "sample/hash.y",
    "sample/lalr.y", "sample/lists.y", "sample/syntax.y",
    "sample/yyerr.y",
    "test/assets/cadenza.y", "test/assets/cast.y",
    "test/assets/chk.y", "test/assets/conf.y",
    "test/assets/csspool.y", "test/assets/digraph.y",
    "test/assets/echk.y", "test/assets/edtf.y", "test/assets/err.y",
    "test/assets/error_recovery.y", "test/assets/expect.y",
    "test/assets/firstline.y", "test/assets/huia.y",
    "test/assets/ichk.y", "test/assets/intp.y",
    "test/assets/journey.y", "test/assets/liquor.y",
    "test/assets/machete.y", "test/assets/macruby.y",
    "test/assets/mailp.y", "test/assets/mediacloth.y",
    "test/assets/mof.y", "test/assets/namae.y", "test/assets/nasl.y",
    "test/assets/newsyn.y", "test/assets/noend.y",
    "test/assets/nokogiri-css.y", "test/assets/nonass.y",
    "test/assets/normal.y", "test/assets/norule.y",
    "test/assets/nullbug1.y", "test/assets/nullbug2.y",
    "test/assets/opal.y", "test/assets/opt.y",
    "test/assets/percent.y", "test/assets/php_serialization.y",
    "test/assets/recv.y", "test/assets/riml.y",
    "test/assets/rrconf.y", "test/assets/ruby18.y",
    "test/assets/ruby19.y", "test/assets/ruby20.y",
    "test/assets/ruby21.y", "test/assets/ruby22.y",
    "test/assets/scan.y", "test/assets/syntax.y",
    "test/assets/tp_plus.y", "test/assets/twowaysql.y",
    "test/assets/unterm.y", "test/assets/useless.y",
    "test/assets/yyerr.y", "test/bench.y", "test/helper.rb",
    "test/infini.y", "test/regress/cadenza", "test/regress/cast",
    "test/regress/csspool", "test/regress/edtf", "test/regress/huia",
    "test/regress/journey", "test/regress/liquor",
    "test/regress/machete", "test/regress/mediacloth",
    "test/regress/mof", "test/regress/namae", "test/regress/nasl",
    "test/regress/nokogiri-css", "test/regress/opal",
    "test/regress/php_serialization", "test/regress/riml",
    "test/regress/ruby18", "test/regress/ruby22",
    "test/regress/tp_plus", "test/regress/twowaysql",
    "test/scandata/brace", "test/scandata/gvar",
    "test/scandata/normal", "test/scandata/percent",
    "test/scandata/slash", "test/src.intp", "test/start.y",
    "test/test_chk_y.rb", "test/test_grammar_file_parser.rb",
    "test/test_racc_command.rb", "test/test_scan_y.rb",
    "test/testscanner.rb", "doc/en/racc.en.rhtml", "doc/ja/racc.ja.rhtml",
    "doc/en/Overview-of-racc.md"
  ]
  s.require_paths = ["lib"]
  s.required_ruby_version = ">= 2.5"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.extra_rdoc_files = [
    "README.ja.rdoc", "README.rdoc",
    "rdoc/en/NEWS.en.rdoc", "rdoc/en/grammar.en.rdoc",
    "rdoc/ja/NEWS.ja.rdoc", "rdoc/ja/debug.ja.rdoc",
    "rdoc/ja/grammar.ja.rdoc", "rdoc/ja/parser.ja.rdoc",
    "README.ja.rdoc", "README.rdoc"
  ]

  if RUBY_PLATFORM =~ /java/
    s.files << 'lib/racc/cparse-jruby.jar'
    s.platform = 'java'
  else
    s.extensions = ["ext/racc/cparse/extconf.rb"]
  end
end