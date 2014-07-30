.class public Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;
.super Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;
.source "AdProviderFingersoft.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;
    }
.end annotation


# instance fields
.field mImageLink:Ljava/lang/String;

.field mImageView:Landroid/widget/ImageView;

.field mLoader:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;

.field mRetrievedImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mImageView:Landroid/widget/ImageView;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mImageLink:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mRetrievedImage:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mLoader:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;

    .line 23
    return-void
.end method


# virtual methods
.method public adProviderCreate(Z)V
    .locals 6
    .parameter "testMode"

    .prologue
    .line 121
    :try_start_0
    const-string v1, ""

    .line 123
    .local v1, imageAddress:Ljava/lang/String;
    new-instance v2, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;-><init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;)V

    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mLoader:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;

    .line 124
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mLoader:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1           #imageAddress:Ljava/lang/String;
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onAdViewFailed()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "fingersoft"

    return-object v0
.end method
