.class public Lcom/adsdk/sdk/RequestRichMediaAd;
.super Lcom/adsdk/sdk/RequestAd;
.source "RequestRichMediaAd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adsdk/sdk/RequestAd",
        "<",
        "Lcom/adsdk/sdk/video/RichMediaAd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/adsdk/sdk/RequestAd;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/RequestRichMediaAd;->is:Ljava/io/InputStream;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "xmlArg"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/adsdk/sdk/RequestAd;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/adsdk/sdk/RequestRichMediaAd;->is:Ljava/io/InputStream;

    .line 30
    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter "is"

    .prologue
    .line 87
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

    .line 89
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method parse(Ljava/io/InputStream;)Lcom/adsdk/sdk/video/RichMediaAd;
    .locals 11
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 60
    .local v5, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 61
    .local v4, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 62
    .local v7, xr:Lorg/xml/sax/XMLReader;
    new-instance v2, Lcom/adsdk/sdk/video/ResponseHandler;

    invoke-direct {v2}, Lcom/adsdk/sdk/video/ResponseHandler;-><init>()V

    .line 63
    .local v2, myHandler:Lcom/adsdk/sdk/video/ResponseHandler;
    invoke-interface {v7, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 64
    sget-boolean v8, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    if-eqz v8, :cond_0

    .line 65
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/RequestRichMediaAd;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, response:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Ad RequestPerform HTTP Response: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 67
    const-string v8, "ISO-8859-1"

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 68
    .local v0, bytes:[B
    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 69
    .local v6, src:Lorg/xml/sax/InputSource;
    const-string v8, "ISO-8859-1"

    invoke-virtual {v6, v8}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 70
    invoke-interface {v7, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 71
    invoke-virtual {v2}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v8

    .line 77
    .end local v0           #bytes:[B
    .end local v3           #response:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 74
    .end local v6           #src:Lorg/xml/sax/InputSource;
    :cond_0
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 75
    .restart local v6       #src:Lorg/xml/sax/InputSource;
    const-string v8, "ISO-8859-1"

    invoke-virtual {v6, v8}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 76
    invoke-interface {v7, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 77
    invoke-virtual {v2}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 79
    .end local v2           #myHandler:Lcom/adsdk/sdk/video/ResponseHandler;
    .end local v4           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v5           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v6           #src:Lorg/xml/sax/InputSource;
    .end local v7           #xr:Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Ljava/lang/Exception;
    new-instance v8, Lcom/adsdk/sdk/RequestException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cannot parse Response:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 80
    invoke-direct {v8, v9, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
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
    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/RequestRichMediaAd;->parse(Ljava/io/InputStream;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    return-object v0
.end method

.method parseTestString()Lcom/adsdk/sdk/video/RichMediaAd;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 36
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 37
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    .line 39
    .local v6, xr:Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/adsdk/sdk/video/ResponseHandler;

    invoke-direct {v1}, Lcom/adsdk/sdk/video/ResponseHandler;-><init>()V

    .line 40
    .local v1, myHandler:Lcom/adsdk/sdk/video/ResponseHandler;
    invoke-interface {v6, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 43
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lcom/adsdk/sdk/RequestRichMediaAd;->is:Ljava/io/InputStream;

    const-string v8, "UTF-8"

    invoke-direct {v2, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 44
    .local v2, reader:Ljava/io/Reader;
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 47
    .local v5, src:Lorg/xml/sax/InputSource;
    invoke-interface {v6, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 48
    invoke-virtual {v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 49
    .end local v1           #myHandler:Lcom/adsdk/sdk/video/ResponseHandler;
    .end local v2           #reader:Ljava/io/Reader;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v5           #src:Lorg/xml/sax/InputSource;
    .end local v6           #xr:Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    new-instance v7, Lcom/adsdk/sdk/RequestException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Cannot parse Response:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 50
    invoke-direct {v7, v8, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
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
    invoke-virtual {p0}, Lcom/adsdk/sdk/RequestRichMediaAd;->parseTestString()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    return-object v0
.end method
