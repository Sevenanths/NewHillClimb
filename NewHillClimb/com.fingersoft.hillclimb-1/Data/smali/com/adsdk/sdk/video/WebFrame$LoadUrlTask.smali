.class Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;
.super Landroid/os/AsyncTask;
.source "WebFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/WebFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadUrlTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/WebFrame;

.field userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/video/WebFrame;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->this$0:Lcom/adsdk/sdk/video/WebFrame;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 185
    #calls: Lcom/adsdk/sdk/video/WebFrame;->getUserAgentString()Ljava/lang/String;
    invoke-static {p1}, Lcom/adsdk/sdk/video/WebFrame;->access$0(Lcom/adsdk/sdk/video/WebFrame;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->userAgent:Ljava/lang/String;

    .line 186
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "urls"

    .prologue
    const/4 v9, 0x0

    .line 190
    aget-object v3, p1, v9

    .line 191
    .local v3, loadingUrl:Ljava/lang/String;
    const/4 v7, 0x0

    .line 193
    .local v7, url:Ljava/net/URL;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v7           #url:Ljava/net/URL;
    .local v8, url:Ljava/net/URL;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Checking URL redirect:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 199
    const/4 v6, -0x1

    .line 200
    .local v6, statusCode:I
    const/4 v1, 0x0

    .line 201
    .local v1, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, nextLocation:Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 204
    .local v5, redirectLocations:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 209
    const-string v9, "User-Agent"

    .line 210
    iget-object v10, p0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->userAgent:Ljava/lang/String;

    .line 209
    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 213
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 214
    const/16 v9, 0xc8

    if-ne v6, v9, :cond_3

    .line 215
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 234
    .end local v8           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :cond_0
    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 238
    .end local v1           #connection:Ljava/net/HttpURLConnection;
    .end local v3           #loadingUrl:Ljava/lang/String;
    .end local v4           #nextLocation:Ljava/lang/String;
    .end local v5           #redirectLocations:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #statusCode:I
    :cond_1
    :goto_1
    return-object v4

    .line 194
    .restart local v3       #loadingUrl:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 195
    .local v2, e:Ljava/net/MalformedURLException;
    if-eqz v3, :cond_2

    .end local v3           #loadingUrl:Ljava/lang/String;
    :goto_2
    move-object v4, v3

    goto :goto_1

    .restart local v3       #loadingUrl:Ljava/lang/String;
    :cond_2
    const-string v3, ""

    goto :goto_2

    .line 218
    .end local v2           #e:Ljava/net/MalformedURLException;
    .end local v7           #url:Ljava/net/URL;
    .restart local v1       #connection:Ljava/net/HttpURLConnection;
    .restart local v4       #nextLocation:Ljava/lang/String;
    .restart local v5       #redirectLocations:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #statusCode:I
    .restart local v8       #url:Ljava/net/URL;
    :cond_3
    :try_start_2
    const-string v9, "location"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 220
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 221
    const-string v9, "URL redirect cycle detected"

    invoke-static {v9}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 234
    if-eqz v1, :cond_4

    .line 235
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 222
    :cond_4
    const-string v4, ""

    .end local v4           #nextLocation:Ljava/lang/String;
    move-object v7, v8

    .end local v8           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    goto :goto_1

    .line 225
    .end local v7           #url:Ljava/net/URL;
    .restart local v4       #nextLocation:Ljava/lang/String;
    .restart local v8       #url:Ljava/net/URL;
    :cond_5
    :try_start_3
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 227
    .end local v8           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    const/16 v9, 0x12e

    if-eq v6, v9, :cond_6

    .line 228
    const/16 v9, 0x12d

    if-eq v6, v9, :cond_6

    .line 229
    const/16 v9, 0x133

    if-eq v6, v9, :cond_6

    .line 230
    const/16 v9, 0x12f

    if-ne v6, v9, :cond_0

    :cond_6
    move-object v8, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    goto :goto_0

    .line 231
    :catch_1
    move-exception v2

    .line 232
    .local v2, e:Ljava/io/IOException;
    if-eqz v4, :cond_8

    .line 234
    .end local v4           #nextLocation:Ljava/lang/String;
    :goto_3
    if-eqz v1, :cond_7

    .line 235
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move-object v7, v8

    .line 232
    .end local v8           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    goto :goto_1

    .end local v7           #url:Ljava/net/URL;
    .restart local v4       #nextLocation:Ljava/lang/String;
    .restart local v8       #url:Ljava/net/URL;
    :cond_8
    :try_start_4
    const-string v4, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 233
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 234
    if-eqz v1, :cond_9

    .line 235
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 236
    :cond_9
    throw v9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 243
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    const-string p1, "about:blank"

    .line 246
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Show URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->this$0:Lcom/adsdk/sdk/video/WebFrame;

    #getter for: Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;
    invoke-static {v0}, Lcom/adsdk/sdk/video/WebFrame;->access$1(Lcom/adsdk/sdk/video/WebFrame;)Lcom/adsdk/sdk/video/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/video/WebViewClient;->setAllowedUrl(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->this$0:Lcom/adsdk/sdk/video/WebFrame;

    #getter for: Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/adsdk/sdk/video/WebFrame;->access$2(Lcom/adsdk/sdk/video/WebFrame;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->this$0:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/WebFrame;->requestLayout()V

    .line 251
    return-void
.end method
