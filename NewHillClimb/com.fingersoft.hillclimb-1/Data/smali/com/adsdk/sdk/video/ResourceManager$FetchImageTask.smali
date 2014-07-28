.class Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;
.super Landroid/os/AsyncTask;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mResourceId:I

.field mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/adsdk/sdk/video/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/video/ResourceManager;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter "ctx"
    .parameter "url"
    .parameter "resId"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->this$0:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mContext:Landroid/content/Context;

    .line 370
    iput-object p3, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mUrl:Ljava/lang/String;

    .line 371
    iput p4, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mResourceId:I

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "urlString"

    .prologue
    .line 399
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 400
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    .line 401
    .local v5, is:Ljava/io/InputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 403
    iget-object v9, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 404
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 405
    .local v6, m:Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 406
    .local v8, w:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 408
    .local v2, h:I
    const/4 v9, 0x1

    int-to-float v10, v8

    .line 407
    invoke-static {v9, v10, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v4, v9

    .line 410
    .local v4, imageWidth:I
    const/4 v9, 0x1

    int-to-float v10, v2

    .line 409
    invoke-static {v9, v10, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v3, v9

    .line 411
    .local v3, imageHeight:I
    if-ne v4, v8, :cond_0

    if-eq v3, v2, :cond_1

    .line 413
    :cond_0
    const/4 v9, 0x0

    .line 412
    invoke-static {v0, v4, v3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 415
    :cond_1
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #h:I
    .end local v3           #imageHeight:I
    .end local v4           #imageWidth:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #m:Landroid/util/DisplayMetrics;
    .end local v7           #url:Ljava/net/URL;
    .end local v8           #w:I
    :goto_0
    return-object v9

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cannot fetch image:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 420
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "params"

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 390
    :cond_0
    if-eqz v0, :cond_1

    .line 391
    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->this$0:Lcom/adsdk/sdk/video/ResourceManager;

    #getter for: Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/adsdk/sdk/video/ResourceManager;->access$1(Lcom/adsdk/sdk/video/ResourceManager;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mResourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 394
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fetched: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->this$0:Lcom/adsdk/sdk/video/ResourceManager;

    #getter for: Lcom/adsdk/sdk/video/ResourceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/adsdk/sdk/video/ResourceManager;->access$0(Lcom/adsdk/sdk/video/ResourceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    .line 380
    iget v3, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mResourceId:I

    const/4 v4, 0x0

    .line 379
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 381
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->this$0:Lcom/adsdk/sdk/video/ResourceManager;

    #getter for: Lcom/adsdk/sdk/video/ResourceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/adsdk/sdk/video/ResourceManager;->access$0(Lcom/adsdk/sdk/video/ResourceManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
