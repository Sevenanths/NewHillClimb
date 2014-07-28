.class Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;
.super Landroid/os/AsyncTask;
.source "CrossPromotionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field bmImage:Landroid/widget/ImageView;

.field promotion:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

.field final synthetic this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;Landroid/widget/ImageView;)V
    .locals 1
    .parameter
    .parameter "bmImage"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    .line 85
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->promotion:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    .line 87
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->bmImage:Landroid/widget/ImageView;

    .line 88
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "promotions"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 96
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v4

    iget-object v4, v4, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->useBase64Images()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    const-string v4, "Loading base64 promotion icon"

    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 98
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getImageData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 99
    .local v1, decodedString:[B
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v4

    iget-object v4, v4, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getBaseAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getGuid()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getImage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/fingersoft/fsadsdk/advertising/utils/ApiHelper;->getBase64PromotionImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, url:Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 114
    .end local v1           #decodedString:[B
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const-string v4, "Streaming promotion icon"

    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 105
    const/4 v4, 0x0

    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->promotion:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    .line 106
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getImage()Ljava/lang/String;

    move-result-object v3

    .line 107
    .restart local v3       #url:Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 110
    .end local v3           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 112
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error getting image: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->doInBackground([Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->bmImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, locale:Ljava/lang/String;
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPlatformName()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, platform:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getBaseAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->promotion:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getGuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->promotion:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getImage()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v5

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getAdditionalParameters()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/fingersoft/fsadsdk/advertising/utils/ApiHelper;->getPromotionsImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/HttpUtils;->callUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v3           #locale:Ljava/lang/String;
    .end local v4           #platform:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local v3       #locale:Ljava/lang/String;
    .restart local v4       #platform:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 130
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "Could not increment promotion count"

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
