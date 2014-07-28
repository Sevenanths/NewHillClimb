.class public Lcom/adsdk/sdk/video/RequestVideoList;
.super Ljava/lang/Object;
.source "RequestVideoList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private parse(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 9
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 71
    .local v3, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 72
    .local v2, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 74
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/adsdk/sdk/video/ResponseHandler;

    invoke-direct {v1}, Lcom/adsdk/sdk/video/ResponseHandler;-><init>()V

    .line 75
    .local v1, myHandler:Lcom/adsdk/sdk/video/ResponseHandler;
    invoke-interface {v5, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 76
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 77
    .local v4, src:Lorg/xml/sax/InputSource;
    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v6}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 78
    invoke-interface {v5, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 79
    iget-object v6, v1, Lcom/adsdk/sdk/video/ResponseHandler;->videoList:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 80
    .end local v1           #myHandler:Lcom/adsdk/sdk/video/ResponseHandler;
    .end local v2           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v3           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v4           #src:Lorg/xml/sax/InputSource;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Lcom/adsdk/sdk/RequestException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Cannot parse Response:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 81
    invoke-direct {v6, v7, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public sendRequest(Lcom/adsdk/sdk/AdRequest;)Ljava/util/HashMap;
    .locals 10
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adsdk/sdk/AdRequest;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2710

    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/adsdk/sdk/AdRequest;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&listads=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, url:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Video List RequestPerform HTTP Get Url: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 38
    .local v0, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-static {v7, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 40
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-static {v7, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 42
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    .line 43
    invoke-virtual {p1}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    .line 42
    invoke-static {v7, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 44
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 48
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 49
    .local v4, responseCode:I
    const/16 v7, 0xc8

    if-ne v4, v7, :cond_0

    .line 50
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/adsdk/sdk/video/RequestVideoList;->parse(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v7

    return-object v7

    .line 52
    :cond_0
    new-instance v7, Lcom/adsdk/sdk/RequestException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Server Error. Response code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 52
    invoke-direct {v7, v8}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/adsdk/sdk/RequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 55
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    .end local v4           #responseCode:I
    :catch_0
    move-exception v1

    .line 56
    .local v1, e:Lcom/adsdk/sdk/RequestException;
    throw v1

    .line 57
    .end local v1           #e:Lcom/adsdk/sdk/RequestException;
    :catch_1
    move-exception v1

    .line 58
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v7, Lcom/adsdk/sdk/RequestException;

    const-string v8, "Error in HTTP request"

    invoke-direct {v7, v8, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 59
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 60
    .local v1, e:Ljava/io/IOException;
    new-instance v7, Lcom/adsdk/sdk/RequestException;

    const-string v8, "Error in HTTP request"

    invoke-direct {v7, v8, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 61
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 62
    .local v5, t:Ljava/lang/Throwable;
    new-instance v7, Lcom/adsdk/sdk/RequestException;

    const-string v8, "Error in HTTP request"

    invoke-direct {v7, v8, v5}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method
