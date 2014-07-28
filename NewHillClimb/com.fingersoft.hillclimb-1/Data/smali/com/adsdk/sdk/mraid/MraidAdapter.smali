.class public Lcom/adsdk/sdk/mraid/MraidAdapter;
.super Lcom/adsdk/sdk/mraid/BaseAdapter;
.source "MraidAdapter.java"


# instance fields
.field private mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

.field private mPreviousAutorefreshSetting:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/MraidAdapter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mPreviousAutorefreshSetting:Z

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/MraidAdapter;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mPreviousAutorefreshSetting:Z

    return v0
.end method

.method private initMraidListeners()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidAdapter$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidAdapter$1;-><init>(Lcom/adsdk/sdk/mraid/MraidAdapter;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setOnReadyListener(Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;)V

    .line 80
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidAdapter$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidAdapter$2;-><init>(Lcom/adsdk/sdk/mraid/MraidAdapter;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setOnExpandListener(Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;)V

    .line 91
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidAdapter$3;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidAdapter$3;-><init>(Lcom/adsdk/sdk/mraid/MraidAdapter;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setOnCloseListener(Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;)V

    .line 100
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidAdapter$4;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidAdapter$4;-><init>(Lcom/adsdk/sdk/mraid/MraidAdapter;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setOnFailureListener(Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;)V

    .line 105
    return-void
.end method


# virtual methods
.method public init(Lcom/adsdk/sdk/mraid/MoPubView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "jsonParams"

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/adsdk/sdk/mraid/BaseAdapter;->init(Lcom/adsdk/sdk/mraid/MoPubView;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mPreviousAutorefreshSetting:Z

    .line 46
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    .line 67
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->destroy()V

    .line 68
    :cond_0
    invoke-super {p0}, Lcom/adsdk/sdk/mraid/BaseAdapter;->invalidate()V

    .line 69
    return-void
.end method

.method public loadAd()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 50
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidAdapter;->isInvalidated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v1, Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/MoPubView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    .line 53
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mJsonParams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->loadHtmlData(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidAdapter;->initMraidListeners()V

    .line 56
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MoPubView;->removeAllViews()V

    .line 57
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 61
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v1, v2, v0}, Lcom/adsdk/sdk/mraid/MoPubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
