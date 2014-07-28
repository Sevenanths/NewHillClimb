.class public Lcom/adsdk/sdk/RequestBannerAd;
.super Lcom/adsdk/sdk/RequestAd;
.source "RequestBannerAd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adsdk/sdk/RequestAd",
        "<",
        "Lcom/adsdk/sdk/BannerAd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/adsdk/sdk/RequestAd;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "xmlArg"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/adsdk/sdk/RequestAd;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/adsdk/sdk/RequestBannerAd;->is:Ljava/io/InputStream;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Parse is null"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/RequestBannerAd;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 29
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter "is"

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v2, "\\A"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, ""

    goto :goto_0
.end method

.method private getAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "document"
    .parameter "elementName"
    .parameter "attributeName"

    .prologue
    .line 44
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 45
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 46
    .local v1, element:Lorg/w3c/dom/Element;
    if-eqz v1, :cond_0

    .line 47
    invoke-interface {v1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, attribute:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    .end local v0           #attribute:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInteger(Ljava/lang/String;)I
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 32
    if-nez p1, :cond_0

    .line 39
    :goto_0
    return v0

    .line 35
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "document"
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 58
    .local v1, nodeList:Lorg/w3c/dom/NodeList;
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 59
    .local v0, element:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 61
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_0

    .line 66
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 68
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z
    .locals 2
    .parameter "document"
    .parameter "name"

    .prologue
    .line 72
    const-string v0, "yes"

    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I
    .locals 1
    .parameter "document"
    .parameter "name"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/RequestBannerAd;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method parse(Ljava/io/InputStream;)Lcom/adsdk/sdk/BannerAd;
    .locals 20
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 93
    .local v6, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v11, Lcom/adsdk/sdk/BannerAd;

    invoke-direct {v11}, Lcom/adsdk/sdk/BannerAd;-><init>()V

    .line 96
    .local v11, response:Lcom/adsdk/sdk/BannerAd;
    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 97
    .local v5, db:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v14, Lorg/xml/sax/InputSource;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 98
    .local v14, src:Lorg/xml/sax/InputSource;
    sget-boolean v17, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    if-eqz v17, :cond_0

    .line 99
    invoke-direct/range {p0 .. p1}, Lcom/adsdk/sdk/RequestBannerAd;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    .line 100
    .local v12, sResponse:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Ad RequestPerform HTTP Response: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 101
    const-string v17, "ISO-8859-1"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 102
    .local v3, bytes:[B
    new-instance v14, Lorg/xml/sax/InputSource;

    .end local v14           #src:Lorg/xml/sax/InputSource;
    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 104
    .end local v3           #bytes:[B
    .end local v12           #sResponse:Ljava/lang/String;
    .restart local v14       #src:Lorg/xml/sax/InputSource;
    :cond_0
    const-string v17, "ISO-8859-1"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v5, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 107
    .local v7, doc:Lorg/w3c/dom/Document;
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    .line 109
    .local v9, element:Lorg/w3c/dom/Element;
    if-nez v9, :cond_1

    .line 110
    new-instance v17, Lcom/adsdk/sdk/RequestException;

    .line 111
    const-string v18, "Cannot parse Response, document is not an xml"

    .line 110
    invoke-direct/range {v17 .. v18}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 172
    .end local v5           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v7           #doc:Lorg/w3c/dom/Document;
    .end local v9           #element:Lorg/w3c/dom/Element;
    .end local v14           #src:Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v8

    .line 173
    .local v8, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v17, Lcom/adsdk/sdk/RequestException;

    const-string v18, "Cannot parse Response"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 113
    .end local v8           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v5       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7       #doc:Lorg/w3c/dom/Document;
    .restart local v9       #element:Lorg/w3c/dom/Element;
    .restart local v14       #src:Lorg/xml/sax/InputSource;
    :cond_1
    :try_start_1
    const-string v17, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, errorValue:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 115
    new-instance v17, Lcom/adsdk/sdk/RequestException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Error Response received: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 115
    invoke-direct/range {v17 .. v18}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 174
    .end local v5           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v7           #doc:Lorg/w3c/dom/Document;
    .end local v9           #element:Lorg/w3c/dom/Element;
    .end local v10           #errorValue:Ljava/lang/String;
    .end local v14           #src:Lorg/xml/sax/InputSource;
    :catch_1
    move-exception v8

    .line 175
    .local v8, e:Lorg/xml/sax/SAXException;
    new-instance v17, Lcom/adsdk/sdk/RequestException;

    const-string v18, "Cannot parse Response"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 118
    .end local v8           #e:Lorg/xml/sax/SAXException;
    .restart local v5       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7       #doc:Lorg/w3c/dom/Document;
    .restart local v9       #element:Lorg/w3c/dom/Element;
    .restart local v10       #errorValue:Ljava/lang/String;
    .restart local v14       #src:Lorg/xml/sax/InputSource;
    :cond_2
    :try_start_2
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 119
    .local v16, type:Ljava/lang/String;
    invoke-interface {v9}, Lorg/w3c/dom/Element;->normalize()V

    .line 120
    const-string v17, "imageAd"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 121
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setType(I)V

    .line 122
    const-string v17, "bannerwidth"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setBannerWidth(I)V

    .line 124
    const-string v17, "bannerheight"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v17

    .line 123
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setBannerHeight(I)V

    .line 126
    const-string v17, "clicktype"

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/adsdk/sdk/data/ClickType;->getValue(Ljava/lang/String;)Lcom/adsdk/sdk/data/ClickType;

    move-result-object v4

    .line 127
    .local v4, clickType:Lcom/adsdk/sdk/data/ClickType;
    invoke-virtual {v11, v4}, Lcom/adsdk/sdk/BannerAd;->setClickType(Lcom/adsdk/sdk/data/ClickType;)V

    .line 128
    const-string v17, "clickurl"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setClickUrl(Ljava/lang/String;)V

    .line 129
    const-string v17, "imageurl"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setImageUrl(Ljava/lang/String;)V

    .line 130
    const-string v17, "refresh"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setRefresh(I)V

    .line 131
    const-string v17, "scale"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setScale(Z)V

    .line 133
    const-string v17, "skippreflight"

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setSkipPreflight(Z)V

    .line 182
    .end local v4           #clickType:Lcom/adsdk/sdk/data/ClickType;
    :goto_0
    return-object v11

    .line 134
    :cond_3
    const-string v17, "textAd"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 135
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setType(I)V

    .line 136
    const-string v17, "htmlString"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setText(Ljava/lang/String;)V

    .line 137
    const-string v17, "htmlString"

    const-string v18, "skipoverlaybutton"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v7, v1, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 138
    .local v13, skipOverlay:Ljava/lang/String;
    const-string v17, "PARSER"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "SkipOverlay: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    if-eqz v13, :cond_4

    .line 140
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setSkipOverlay(I)V

    .line 143
    :cond_4
    const-string v17, "clicktype"

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/adsdk/sdk/data/ClickType;->getValue(Ljava/lang/String;)Lcom/adsdk/sdk/data/ClickType;

    move-result-object v4

    .line 144
    .restart local v4       #clickType:Lcom/adsdk/sdk/data/ClickType;
    invoke-virtual {v11, v4}, Lcom/adsdk/sdk/BannerAd;->setClickType(Lcom/adsdk/sdk/data/ClickType;)V

    .line 145
    const-string v17, "clickurl"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setClickUrl(Ljava/lang/String;)V

    .line 146
    const-string v17, "refresh"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setRefresh(I)V

    .line 147
    const-string v17, "scale"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setScale(Z)V

    .line 149
    const-string v17, "skippreflight"

    .line 148
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setSkipPreflight(Z)V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 176
    .end local v4           #clickType:Lcom/adsdk/sdk/data/ClickType;
    .end local v5           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v7           #doc:Lorg/w3c/dom/Document;
    .end local v9           #element:Lorg/w3c/dom/Element;
    .end local v10           #errorValue:Ljava/lang/String;
    .end local v13           #skipOverlay:Ljava/lang/String;
    .end local v14           #src:Lorg/xml/sax/InputSource;
    .end local v16           #type:Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 177
    .local v8, e:Ljava/io/IOException;
    new-instance v17, Lcom/adsdk/sdk/RequestException;

    const-string v18, "Cannot read Response"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 150
    .end local v8           #e:Ljava/io/IOException;
    .restart local v5       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7       #doc:Lorg/w3c/dom/Document;
    .restart local v9       #element:Lorg/w3c/dom/Element;
    .restart local v10       #errorValue:Ljava/lang/String;
    .restart local v14       #src:Lorg/xml/sax/InputSource;
    .restart local v16       #type:Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v17, "mraidAd"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 151
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setType(I)V

    .line 152
    const-string v17, "htmlString"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setText(Ljava/lang/String;)V

    .line 153
    const-string v17, "htmlString"

    const-string v18, "skipoverlaybutton"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v7, v1, v2}, Lcom/adsdk/sdk/RequestBannerAd;->getAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 154
    .restart local v13       #skipOverlay:Ljava/lang/String;
    const-string v17, "PARSER"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "SkipOverlay: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-eqz v13, :cond_6

    .line 156
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setSkipOverlay(I)V

    .line 159
    :cond_6
    const-string v17, "clicktype"

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/adsdk/sdk/data/ClickType;->getValue(Ljava/lang/String;)Lcom/adsdk/sdk/data/ClickType;

    move-result-object v4

    .line 160
    .restart local v4       #clickType:Lcom/adsdk/sdk/data/ClickType;
    invoke-virtual {v11, v4}, Lcom/adsdk/sdk/BannerAd;->setClickType(Lcom/adsdk/sdk/data/ClickType;)V

    .line 161
    const-string v17, "clickurl"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setClickUrl(Ljava/lang/String;)V

    .line 162
    const-string v17, "urltype"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setUrlType(Ljava/lang/String;)V

    .line 163
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setRefresh(I)V

    .line 164
    const-string v17, "scale"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setScale(Z)V

    .line 166
    const-string v17, "skippreflight"

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/adsdk/sdk/RequestBannerAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setSkipPreflight(Z)V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 178
    .end local v4           #clickType:Lcom/adsdk/sdk/data/ClickType;
    .end local v5           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v7           #doc:Lorg/w3c/dom/Document;
    .end local v9           #element:Lorg/w3c/dom/Element;
    .end local v10           #errorValue:Ljava/lang/String;
    .end local v13           #skipOverlay:Ljava/lang/String;
    .end local v14           #src:Lorg/xml/sax/InputSource;
    .end local v16           #type:Ljava/lang/String;
    :catch_3
    move-exception v15

    .line 179
    .local v15, t:Ljava/lang/Throwable;
    new-instance v17, Lcom/adsdk/sdk/RequestException;

    const-string v18, "Cannot read Response"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 167
    .end local v15           #t:Ljava/lang/Throwable;
    .restart local v5       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7       #doc:Lorg/w3c/dom/Document;
    .restart local v9       #element:Lorg/w3c/dom/Element;
    .restart local v10       #errorValue:Ljava/lang/String;
    .restart local v14       #src:Lorg/xml/sax/InputSource;
    .restart local v16       #type:Ljava/lang/String;
    :cond_7
    :try_start_4
    const-string v17, "noAd"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 168
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/adsdk/sdk/BannerAd;->setType(I)V

    goto/16 :goto_0

    .line 170
    :cond_8
    new-instance v17, Lcom/adsdk/sdk/RequestException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Unknown response type "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
.end method

.method bridge synthetic parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/RequestBannerAd;->parse(Ljava/io/InputStream;)Lcom/adsdk/sdk/BannerAd;

    move-result-object v0

    return-object v0
.end method

.method parseTestString()Lcom/adsdk/sdk/BannerAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/adsdk/sdk/RequestBannerAd;->is:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/RequestBannerAd;->parse(Ljava/io/InputStream;)Lcom/adsdk/sdk/BannerAd;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic parseTestString()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/adsdk/sdk/RequestBannerAd;->parseTestString()Lcom/adsdk/sdk/BannerAd;

    move-result-object v0

    return-object v0
.end method
