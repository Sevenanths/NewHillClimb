.class Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;
.super Landroid/os/AsyncTask;
.source "ApplifierImpactWebData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplifierImpactUrlLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private _baseUrl:Ljava/lang/String;

.field private _binput:Ljava/io/BufferedInputStream;

.field private _connection:Ljava/net/HttpURLConnection;

.field private _done:Ljava/lang/Boolean;

.field private _downloadLength:I

.field private _finalUrl:Ljava/lang/String;

.field private _httpMethod:Ljava/lang/String;

.field private _input:Ljava/io/InputStream;

.field private _queryParams:Ljava/lang/String;

.field private _requestType:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

.field private _retries:I

.field private _url:Ljava/net/URL;

.field private _urlData:Ljava/lang/String;

.field final synthetic this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;


# direct methods
.method public constructor <init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;I)V
    .locals 4
    .parameter
    .parameter "url"
    .parameter "queryParams"
    .parameter "httpMethod"
    .parameter "requestType"
    .parameter "existingRetries"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 627
    iput-object p1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    .line 628
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 613
    iput-object v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;

    .line 614
    iput-object v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    .line 615
    iput v3, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_downloadLength:I

    .line 616
    iput-object v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_input:Ljava/io/InputStream;

    .line 617
    iput-object v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_binput:Ljava/io/BufferedInputStream;

    .line 618
    const-string v1, ""

    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_urlData:Ljava/lang/String;

    .line 619
    iput-object v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_requestType:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    .line 620
    iput-object v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 621
    iput v3, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_retries:I

    .line 622
    const-string v1, "GET"

    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_httpMethod:Ljava/lang/String;

    .line 623
    iput-object v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_queryParams:Ljava/lang/String;

    .line 624
    iput-object v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_baseUrl:Ljava/lang/String;

    .line 625
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_done:Ljava/lang/Boolean;

    .line 630
    :try_start_0
    iput-object p2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 631
    iput-object p2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_baseUrl:Ljava/lang/String;

    .line 633
    const-string v1, "GET"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 634
    iget-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_finalUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 637
    :cond_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_finalUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :goto_0
    iput-object p3, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_queryParams:Ljava/lang/String;

    .line 644
    iput-object p4, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_httpMethod:Ljava/lang/String;

    .line 645
    #getter for: Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalLoadersCreated:I
    invoke-static {p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->access$2(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalLoadersCreated:I
    invoke-static {p1, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->access$3(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;I)V

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total urlLoaders created: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalLoadersCreated:I
    invoke-static {p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->access$2(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 647
    iput-object p5, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_requestType:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    .line 648
    iput p6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_retries:I

    .line 649
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems with url! Error-message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private cancelInMainThread()V
    .locals 3

    .prologue
    .line 692
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 693
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;

    iget-object v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-direct {v1, v2, p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;-><init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 694
    :cond_0
    return-void
.end method

.method private closeAndFlushConnection()V
    .locals 3

    .prologue
    .line 803
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 804
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_input:Ljava/io/InputStream;

    .line 805
    iget-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_binput:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 806
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_binput:Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_0
    return-void

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems closing streams: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 680
    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;

    .line 681
    iput v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_downloadLength:I

    .line 682
    const-string v0, ""

    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_urlData:Ljava/lang/String;

    .line 683
    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_requestType:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    .line 684
    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 685
    iput v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_retries:I

    .line 686
    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_httpMethod:Ljava/lang/String;

    .line 687
    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_queryParams:Ljava/lang/String;

    .line 688
    iput-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_baseUrl:Ljava/lang/String;

    .line 689
    return-void
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    .line 699
    :try_start_0
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 700
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    .line 706
    :goto_0
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/16 v7, 0x4e20

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 707
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/16 v7, 0x7530

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 708
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_httpMethod:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 709
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const-string v7, "Content-type"

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 712
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_httpMethod:Ljava/lang/String;

    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 713
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :cond_0
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_3

    .line 722
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_httpMethod:Ljava/lang/String;

    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 724
    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 725
    .local v3, pout:Ljava/io/PrintWriter;
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_queryParams:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 736
    .end local v3           #pout:Ljava/io/PrintWriter;
    :cond_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Connection response: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_queryParams:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 737
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_input:Ljava/io/InputStream;

    .line 738
    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_input:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_binput:Ljava/io/BufferedInputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 746
    const-wide/16 v4, 0x0

    .line 747
    .local v4, total:J
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    iput v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_downloadLength:I

    .line 750
    :try_start_3
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    #getter for: Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalLoadersHaveRun:I
    invoke-static {v6}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->access$4(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    #setter for: Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalLoadersHaveRun:I
    invoke-static {v6, v7}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->access$5(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;I)V

    .line 751
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Total urlLoaders that have started running: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    #getter for: Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->_totalLoadersHaveRun:I
    invoke-static {v7}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->access$4(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 752
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Reading data from: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Content-length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_downloadLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 754
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v6, 0x5000

    invoke-direct {v0, v6}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 755
    .local v0, baf:Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v1, 0x0

    .line 757
    .local v1, current:I
    :cond_2
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_binput:Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_5

    .line 765
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    iput-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_urlData:Ljava/lang/String;

    .line 766
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Read total of: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 775
    .end local v0           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1           #current:I
    .end local v4           #total:J
    :cond_3
    :goto_1
    return-object v9

    .line 703
    :cond_4
    :try_start_4
    iget-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    iput-object v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 715
    :catch_0
    move-exception v2

    .line 716
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Problems opening connection: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 717
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->cancelInMainThread()V

    goto :goto_1

    .line 728
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 729
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Problems writing post-data: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 730
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->cancelInMainThread()V

    goto :goto_1

    .line 740
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 741
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Problems opening stream: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 742
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->cancelInMainThread()V

    goto :goto_1

    .line 758
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1       #current:I
    .restart local v4       #total:J
    :cond_5
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 759
    int-to-byte v6, v1

    :try_start_5
    invoke-virtual {v0, v6}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    .line 761
    invoke-virtual {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->isCancelled()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 768
    .end local v0           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1           #current:I
    :catch_3
    move-exception v2

    .line 769
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Problems loading url! Error-message: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 770
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->cancelInMainThread()V

    goto/16 :goto_1
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_urlData:Ljava/lang/String;

    return-object v0
.end method

.method public getHTTPMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_queryParams:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_requestType:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    return-object v0
.end method

.method public getRetries()I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_retries:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 780
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_done:Ljava/lang/Boolean;

    .line 781
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->closeAndFlushConnection()V

    .line 782
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    #calls: Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->urlLoadFailed(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    invoke-static {v0, p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->access$6(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    .line 783
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_done:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_done:Ljava/lang/Boolean;

    .line 789
    invoke-direct {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->closeAndFlushConnection()V

    .line 790
    iget-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    #calls: Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->urlLoadCompleted(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    invoke-static {v0, p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->access$7(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    .line 793
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 794
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 798
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 799
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
