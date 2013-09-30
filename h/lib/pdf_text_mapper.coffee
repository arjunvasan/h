class window.PDFTextMapper
  constructor: ->

  scan: ->
    console.log "Should scan PDF for text."

    # Tell the Find Controller to go digging
    PDFFindController.extractText()

    # When all the text has been extracted
    PDFJS.Promise.all(PDFFindController.extractTextPromises).then ->

      @corpus = PDFFindController.pageContents.join " "   

      console.log "Text extraction has finished. Corpus is:"
      console.log @corpus
    return time: 0
