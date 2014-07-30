.class Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;
.super Landroid/os/AsyncTask;
.source "AdProviderFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field bmImage:Landroid/widget/ImageView;

.field campaign:Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;Landroid/widget/ImageView;)V
    .locals 1
    .parameter
    .parameter "bmImage"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    .line 235
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->campaign:Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    .line 237
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->bmImage:Landroid/widget/ImageView;

    .line 238
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "campaigns"

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 245
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->getAdImage()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, url:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Calling ad image: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 247
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    .end local v2           #url:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 249
    :catch_0
    move-exception v1

    .line 251
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error getting ad image: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    #calls: Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->stopTimer()V
    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->access$0(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;)V

    .line 253
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    invoke-virtual {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->doInBackground([Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 260
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->bmImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 263
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    iget-object v0, v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, locale:Ljava/lang/String;
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    iget-object v0, v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPlatformName()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, platform:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    iget-object v0, v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getBaseAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->campaign:Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->getGuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->campaign:Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->getAdImage()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getAdditionalParameters()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/fingersoft/fsadsdk/advertising/utils/ApiHelper;->getAdvertImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/HttpUtils;->callUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v3           #locale:Ljava/lang/String;
    .end local v4           #platform:Ljava/lang/String;
    :goto_0
    return-void

    .line 269
    .restart local v3       #locale:Ljava/lang/String;
    .restart local v4       #platform:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 271
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "Could not increment advert serve count"

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    .end local v3           #locale:Ljava/lang/String;
    .end local v4           #platform:Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    #calls: Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->stopTimer()V
    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->access$0(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;)V

    .line 277
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    iget-object v0, v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$DownloadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
