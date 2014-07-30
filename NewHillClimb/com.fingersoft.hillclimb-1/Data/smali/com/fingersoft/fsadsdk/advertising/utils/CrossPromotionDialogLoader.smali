.class public Lcom/fingersoft/fsadsdk/advertising/utils/CrossPromotionDialogLoader;
.super Ljava/lang/Object;
.source "CrossPromotionDialogLoader.java"


# instance fields
.field imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "imageView"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/utils/CrossPromotionDialogLoader;->imageView:Landroid/widget/ImageView;

    .line 23
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "promotions"

    .prologue
    .line 27
    const/4 v2, 0x0

    .line 30
    .local v2, image:Landroid/graphics/drawable/Drawable;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://192.168.1.84/adverts/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, baseUrl:Ljava/lang/String;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    .local v3, imagerUrl:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 33
    .local v4, is:Ljava/io/InputStream;
    const-string v5, "src"

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 39
    .end local v0           #baseUrl:Ljava/lang/String;
    .end local v3           #imagerUrl:Ljava/net/URL;
    .end local v4           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 35
    :catch_0
    move-exception v1

    .line 37
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/CrossPromotionDialogLoader;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :cond_0
    return-void
.end method
