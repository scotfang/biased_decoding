import ctranslate2

if __name__ == "__main__":
    translator = ctranslate2.Translator("/home/scotfang/models/transformer-ende-wmt-pyOnmt/ende_ctranslate2/")
    print(translator.translate_batch([["▁H", "ello", "▁world", "!"]]))
