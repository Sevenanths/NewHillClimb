.class public Lcom/adsdk/sdk/video/InterstitialController;
.super Landroid/widget/LinearLayout;
.source "InterstitialController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;,
        Lcom/adsdk/sdk/video/InterstitialController$OnReloadListener;,
        Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;,
        Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0xbb8

.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2


# instance fields
.field private buttonWidthPercent:D

.field private mAutoclose:Z

.field private mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mBottomBar:Landroid/widget/LinearLayout;

.field private mBottomBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

.field private mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

.field private mBrowserView:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mDefaultTimeout:I

.field private mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

.field private mExternalListener:Landroid/view/View$OnClickListener;

.field private mFixed:Z

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

.field private mForwardListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

.field private mLeftTime:Landroid/widget/TextView;

.field private mNavIconsLayout:Landroid/widget/LinearLayout;

.field private mOnReloadListener:Lcom/adsdk/sdk/video/InterstitialController$OnReloadListener;

.field private mOnResetAutocloseListener:Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;

.field private mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

.field private mReloadListener:Landroid/view/View$OnClickListener;

.field private mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

.field private mShowing:Z

.field private mTitle:Ljava/lang/String;

.field private mTitleText:Landroid/widget/TextView;

.field private mTopBar:Landroid/widget/LinearLayout;

.field private mTopBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/video/InterstitialData;)V
    .locals 6
    .parameter "context"
    .parameter "interstitialData"

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const-wide v4, 0x3fb70a3d70a3d70aL

    iput-wide v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->buttonWidthPercent:D

    .line 659
    new-instance v2, Lcom/adsdk/sdk/video/InterstitialController$1;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/video/InterstitialController$1;-><init>(Lcom/adsdk/sdk/video/InterstitialController;)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackListener:Landroid/view/View$OnClickListener;

    .line 669
    new-instance v2, Lcom/adsdk/sdk/video/InterstitialController$2;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/video/InterstitialController$2;-><init>(Lcom/adsdk/sdk/video/InterstitialController;)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadListener:Landroid/view/View$OnClickListener;

    .line 676
    new-instance v2, Lcom/adsdk/sdk/video/InterstitialController$3;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/video/InterstitialController$3;-><init>(Lcom/adsdk/sdk/video/InterstitialController;)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardListener:Landroid/view/View$OnClickListener;

    .line 686
    new-instance v2, Lcom/adsdk/sdk/video/InterstitialController$4;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/video/InterstitialController$4;-><init>(Lcom/adsdk/sdk/video/InterstitialController;)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalListener:Landroid/view/View$OnClickListener;

    .line 67
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 69
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    check-cast v1, Landroid/view/WindowManager;

    .line 70
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 71
    iput-object p1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    .line 73
    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 75
    const-string v3, "Interstitial info cannot be null"

    .line 74
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 78
    new-instance v2, Ljava/util/Formatter;

    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatter:Ljava/util/Formatter;

    .line 79
    iput-boolean v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFixed:Z

    .line 80
    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v2, v2, Lcom/adsdk/sdk/video/InterstitialData;->autoclose:I

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mAutoclose:Z

    .line 81
    const/16 v2, 0xbb8

    iput v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mDefaultTimeout:I

    .line 82
    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v2, v2, Lcom/adsdk/sdk/video/InterstitialData;->allowTapNavigationBars:Z

    if-nez v2, :cond_1

    .line 84
    iput v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mDefaultTimeout:I

    .line 86
    :cond_1
    new-instance v2, Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;-><init>(Lcom/adsdk/sdk/video/InterstitialController;)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v2, Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/adsdk/sdk/video/ResourceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 88
    invoke-direct {p0, v0}, Lcom/adsdk/sdk/video/InterstitialController;->buildNavigationBarView(Landroid/util/DisplayMetrics;)V

    .line 89
    return-void

    :cond_2
    move v2, v3

    .line 80
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/InterstitialController;)Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/InterstitialController;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mDefaultTimeout:I

    return v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/video/InterstitialController;)I
    .locals 1
    .parameter

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/adsdk/sdk/video/InterstitialController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/video/InterstitialController;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z

    return v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/video/InterstitialController;)Lcom/adsdk/sdk/video/InterstitialData;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/video/InterstitialController;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/InterstitialController;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private buildNavigationBarView(Landroid/util/DisplayMetrics;)V
    .locals 13
    .parameter "metrics"

    .prologue
    const/high16 v12, 0x3f80

    const/4 v8, -0x1

    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 109
    invoke-virtual {p0, v12}, Lcom/adsdk/sdk/video/InterstitialController;->setWeightSum(F)V

    .line 110
    invoke-virtual {p0, v11}, Lcom/adsdk/sdk/video/InterstitialController;->setOrientation(I)V

    .line 111
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 113
    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    invoke-virtual {p0, v4}, Lcom/adsdk/sdk/video/InterstitialController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    .line 116
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 117
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x30

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 121
    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 122
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 124
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 126
    const/high16 v4, 0x4080

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 127
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 125
    invoke-static {v11, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v2, v4

    .line 128
    .local v2, padding:I
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v9, v2, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 129
    new-instance v4, Lcom/adsdk/sdk/video/AspectRatioImageView;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    .line 130
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    invoke-virtual {v4, v3}, Lcom/adsdk/sdk/video/AspectRatioImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    .line 132
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {v4, v11, v5, v6}, Lcom/adsdk/sdk/video/AspectRatioImageView;->fillParent(ZII)V

    .line 134
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    invoke-virtual {p0, v4, v3}, Lcom/adsdk/sdk/video/InterstitialController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v3}, Lcom/adsdk/sdk/video/InterstitialController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    .line 138
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v10, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 141
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 142
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    .line 143
    const v6, 0x1030046

    .line 142
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 144
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    invoke-static {v11}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 146
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowserView:Landroid/widget/FrameLayout;

    .line 149
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    .local v0, browserParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x30

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 153
    iput v12, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 154
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowserView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 155
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowserView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v0}, Lcom/adsdk/sdk/video/InterstitialController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    .line 158
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 159
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 161
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    const-wide v6, 0x3fbe76c8b4395810L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 159
    invoke-direct {v3, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x50

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 163
    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 164
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 166
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 167
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 168
    new-instance v4, Lcom/adsdk/sdk/video/AspectRatioImageView;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    .line 170
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    .line 171
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {v4, v11, v5, v6}, Lcom/adsdk/sdk/video/AspectRatioImageView;->fillParent(ZII)V

    .line 173
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    invoke-virtual {p0, v4}, Lcom/adsdk/sdk/video/InterstitialController;->addView(Landroid/view/View;)V

    .line 174
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v3}, Lcom/adsdk/sdk/video/InterstitialController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, buttonPanel:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 179
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    .line 177
    invoke-direct {v3, v10, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 180
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x13

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 181
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 183
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    const/high16 v4, 0x4080

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 193
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 191
    invoke-static {v11, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v2, v4

    .line 194
    new-instance v4, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    .line 195
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 196
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->buttonWidthPercent:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 197
    iget v5, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/adsdk/sdk/video/InterstitialController;->buttonWidthPercent:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    .line 195
    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 198
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 199
    const/4 v4, 0x4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 200
    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 201
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v11}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setAdjustViewBounds(Z)V

    .line 202
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v2, v9, v2, v9}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setPadding(IIII)V

    .line 205
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v4, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    .line 208
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v2, v9, v2, v9}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setPadding(IIII)V

    .line 209
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v4, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    .line 212
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v2, v9, v2, v9}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setPadding(IIII)V

    .line 213
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v4, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    .line 216
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v2, v9, v2, v9}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setPadding(IIII)V

    .line 217
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    new-instance v4, Lcom/adsdk/sdk/video/AutoResizeTextView;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/adsdk/sdk/video/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    .line 220
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 223
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 226
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    invoke-static {v11}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 227
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mNavIconsLayout:Landroid/widget/LinearLayout;

    .line 230
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v10, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 233
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x15

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 234
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mNavIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 235
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mNavIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 236
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mNavIconsLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 237
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mNavIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    invoke-direct {p0, v2, p1}, Lcom/adsdk/sdk/video/InterstitialController;->initNavigationBarControllerView(ILandroid/util/DisplayMetrics;)V

    .line 239
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 537
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 539
    :sswitch_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->hide()V

    goto :goto_0

    .line 542
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 593
    :sswitch_2
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 595
    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/16 v3, -0x11

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 596
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 597
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 544
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :sswitch_3
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 546
    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 547
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 548
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 553
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :sswitch_4
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 555
    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 556
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 557
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 562
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :sswitch_5
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 564
    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/16 v3, -0xe

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 565
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 566
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 573
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :sswitch_6
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 575
    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/16 v3, -0xf

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 576
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 577
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 583
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :sswitch_7
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 585
    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/16 v3, -0x10

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 586
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 587
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 537
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 542
    :sswitch_data_1
    .sparse-switch
        -0x11 -> :sswitch_2
        -0x10 -> :sswitch_7
        -0xf -> :sswitch_6
        -0xe -> :sswitch_5
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_3
    .end sparse-switch
.end method

.method private initNavigationBarControllerView(ILandroid/util/DisplayMetrics;)V
    .locals 13
    .parameter "padding"
    .parameter "metrics"

    .prologue
    const/16 v12, -0x10

    const/16 v11, -0x11

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 243
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->showBottomNavigationBar:Z

    if-nez v4, :cond_4

    .line 244
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 360
    :cond_0
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->showTopNavigationBar:Z

    if-nez v4, :cond_14

    .line 361
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 384
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->showNavigationBars:Z

    if-nez v4, :cond_3

    .line 385
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    .line 386
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    :cond_2
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_3

    .line 389
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    :cond_3
    return-void

    .line 246
    :cond_4
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->bottomNavigationBarBackground:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 248
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->bottomNavigationBarBackground:Ljava/lang/String;

    .line 249
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 250
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    .line 251
    iget-object v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v6, v6, Lcom/adsdk/sdk/video/InterstitialData;->bottomNavigationBarBackground:Ljava/lang/String;

    .line 252
    const/4 v7, -0x2

    .line 250
    invoke-virtual {v4, v5, v6, v7}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    .line 259
    :goto_1
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v4, :cond_5

    .line 260
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->backButtonImage:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 261
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->backButtonImage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 262
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v8}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    .line 264
    iget-object v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v6, v6, Lcom/adsdk/sdk/video/InterstitialData;->backButtonImage:Ljava/lang/String;

    .line 265
    const/16 v7, -0xe

    .line 263
    invoke-virtual {v4, v5, v6, v7}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    .line 272
    :goto_2
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->showBackButton:Z

    if-eqz v4, :cond_c

    .line 274
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v10}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    .line 280
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v4, :cond_6

    .line 281
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->forwardButtonImage:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 282
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->forwardButtonImage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d

    .line 283
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v8}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    .line 285
    iget-object v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v6, v6, Lcom/adsdk/sdk/video/InterstitialData;->forwardButtonImage:Ljava/lang/String;

    .line 286
    const/16 v7, -0xf

    .line 284
    invoke-virtual {v4, v5, v6, v7}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    .line 292
    :goto_4
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->showForwardButton:Z

    if-eqz v4, :cond_e

    .line 294
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v10}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    .line 300
    :cond_6
    :goto_5
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v4, :cond_7

    .line 301
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->reloadButtonImage:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 302
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->reloadButtonImage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f

    .line 303
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v8}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    .line 305
    iget-object v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v6, v6, Lcom/adsdk/sdk/video/InterstitialData;->reloadButtonImage:Ljava/lang/String;

    .line 304
    invoke-virtual {v4, v5, v6, v12}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    .line 312
    :goto_6
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->showReloadButton:Z

    if-eqz v4, :cond_10

    .line 314
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v10}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    .line 320
    :cond_7
    :goto_7
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v4, :cond_8

    .line 321
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->externalButtonImage:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 322
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->externalButtonImage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_11

    .line 323
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v8}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    .line 325
    iget-object v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v6, v6, Lcom/adsdk/sdk/video/InterstitialData;->externalButtonImage:Ljava/lang/String;

    .line 324
    invoke-virtual {v4, v5, v6, v11}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    .line 332
    :goto_8
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->showExternalButton:Z

    if-eqz v4, :cond_12

    .line 334
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v10}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    .line 340
    :cond_8
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 341
    new-instance v4, Ljava/util/Formatter;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatter:Ljava/util/Formatter;

    .line 342
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    .line 343
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->showTimer:Z

    if-eqz v4, :cond_13

    iget-boolean v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mAutoclose:Z

    if-eqz v4, :cond_13

    .line 344
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    :cond_9
    :goto_a
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->icons:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 350
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->icons:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 351
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->icons:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adsdk/sdk/video/NavIconData;

    .line 352
    .local v2, iconData:Lcom/adsdk/sdk/video/NavIconData;
    new-instance v1, Lcom/adsdk/sdk/video/NavIcon;

    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v2}, Lcom/adsdk/sdk/video/NavIcon;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/video/NavIconData;)V

    .line 353
    .local v1, icon:Lcom/adsdk/sdk/video/NavIcon;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 354
    iget v4, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->buttonWidthPercent:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 355
    iget v5, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/adsdk/sdk/video/InterstitialController;->buttonWidthPercent:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    .line 353
    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 356
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mNavIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 254
    .end local v0           #i:I
    .end local v1           #icon:Lcom/adsdk/sdk/video/NavIcon;
    .end local v2           #iconData:Lcom/adsdk/sdk/video/NavIconData;
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    .line 255
    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 256
    iget-object v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v7}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 255
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 267
    :cond_b
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 268
    iget-object v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/16 v7, -0xe

    invoke-virtual {v5, v6, v7}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 267
    invoke-virtual {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v10}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setEnabled(Z)V

    goto/16 :goto_2

    .line 276
    :cond_c
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v9}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_3

    .line 288
    :cond_d
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 289
    iget-object v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/16 v7, -0xf

    invoke-virtual {v5, v6, v7}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 288
    invoke-virtual {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 296
    :cond_e
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v9}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_5

    .line 308
    :cond_f
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 309
    iget-object v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v12}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 308
    invoke-virtual {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 316
    :cond_10
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v9}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_7

    .line 328
    :cond_11
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 329
    iget-object v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v11}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 328
    invoke-virtual {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 336
    :cond_12
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v4, v9}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_9

    .line 346
    :cond_13
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 363
    :cond_14
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarBackground:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 365
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarBackground:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_15

    .line 366
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    .line 367
    iget-object v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v6, v6, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarBackground:Ljava/lang/String;

    .line 368
    const/4 v7, -0x1

    .line 366
    invoke-virtual {v4, v5, v6, v7}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    .line 374
    :goto_c
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 375
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitleType:I

    if-nez v4, :cond_16

    .line 376
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v5, v5, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 370
    :cond_15
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    iget-object v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 371
    iget-object v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 370
    invoke-virtual {v4, v5}, Lcom/adsdk/sdk/video/AspectRatioImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    .line 378
    :cond_16
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v4, v4, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitleType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 379
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setProgress()I
    .locals 5

    .prologue
    .line 628
    const/4 v1, 0x0

    .line 629
    .local v1, position:I
    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    if-eqz v3, :cond_0

    .line 630
    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    invoke-interface {v3}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->getTime()I

    move-result v1

    .line 632
    :cond_0
    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v3, v3, Lcom/adsdk/sdk/video/InterstitialData;->autoclose:I

    mul-int/lit16 v0, v3, 0x3e8

    .line 633
    .local v0, duration:I
    sub-int v2, v0, v1

    .line 634
    .local v2, timeLeft:I
    iget-boolean v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mAutoclose:Z

    if-eqz v3, :cond_4

    if-lez v0, :cond_4

    if-ltz v2, :cond_4

    .line 635
    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 636
    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/adsdk/sdk/video/InterstitialController;->stringForTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 644
    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v3, v3, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitleType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 645
    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    if-eqz v3, :cond_3

    .line 646
    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 647
    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    invoke-interface {v4}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->getPageTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 648
    :cond_2
    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    invoke-interface {v3}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->getPageTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitle:Ljava/lang/String;

    .line 649
    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    :cond_3
    invoke-direct {p0}, Lcom/adsdk/sdk/video/InterstitialController;->updateBackForward()V

    .line 656
    return v1

    .line 639
    :cond_4
    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 640
    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 610
    div-int/lit16 v3, p1, 0x3e8

    .line 612
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 613
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 614
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 616
    .local v0, hours:I
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 617
    if-lez v0, :cond_0

    .line 618
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    .line 619
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 623
    :goto_0
    return-object v4

    .line 620
    :cond_0
    if-lez v1, :cond_1

    .line 621
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 623
    :cond_1
    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "0:%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateBackForward()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 696
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    if-nez v0, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 700
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setEnabled(Z)V

    .line 708
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 709
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setEnabled(Z)V

    goto :goto_0

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setEnabled(Z)V

    goto :goto_1

    .line 713
    :cond_4
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public canToggle()Z
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->allowTapNavigationBars:Z

    return v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->canToggle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 465
    :cond_1
    iput-boolean v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z

    .line 466
    iput-boolean v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFixed:Z

    .line 469
    :cond_2
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 725
    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/video/InterstitialController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 726
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 731
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 732
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->resetAutoclose()V

    .line 733
    const/4 v0, 0x1

    return v0
.end method

.method public pageLoaded()V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/adsdk/sdk/video/InterstitialController;->setProgress()I

    .line 507
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->reload()V

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/adsdk/sdk/video/InterstitialController;->setProgress()I

    .line 499
    iget v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mDefaultTimeout:I

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/InterstitialController;->show(I)V

    .line 500
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mOnReloadListener:Lcom/adsdk/sdk/video/InterstitialController$OnReloadListener;

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mOnReloadListener:Lcom/adsdk/sdk/video/InterstitialController$OnReloadListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/InterstitialController$OnReloadListener;->onInterstitialReload()V

    .line 503
    :cond_1
    return-void
.end method

.method public resetAutoclose()V
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mAutoclose:Z

    if-eqz v0, :cond_0

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mAutoclose:Z

    .line 397
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mOnResetAutocloseListener:Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mOnResetAutocloseListener:Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;->onResetAutoclose()V

    .line 401
    :cond_0
    return-void
.end method

.method public resizeTopBar(I)V
    .locals 5
    .parameter "bottom"

    .prologue
    .line 472
    if-gtz p1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    const/4 v2, 0x1

    const/high16 v3, 0x4080

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 476
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 474
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 477
    .local v0, padding:I
    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 478
    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 479
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    add-int v2, p1, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 480
    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setBrowser(Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;)V
    .locals 0
    .parameter "browser"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    .line 99
    invoke-direct {p0}, Lcom/adsdk/sdk/video/InterstitialController;->updateBackForward()V

    .line 100
    return-void
.end method

.method public setBrowserView(Landroid/view/View;)V
    .locals 4
    .parameter "browserView"

    .prologue
    const/4 v3, -0x1

    .line 92
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowserView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 94
    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 92
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method public setOnReloadListener(Lcom/adsdk/sdk/video/InterstitialController$OnReloadListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 737
    iput-object p1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mOnReloadListener:Lcom/adsdk/sdk/video/InterstitialController$OnReloadListener;

    .line 738
    return-void
.end method

.method public setOnResetAutocloseListener(Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 741
    iput-object p1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mOnResetAutocloseListener:Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;

    .line 742
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mDefaultTimeout:I

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/InterstitialController;->show(I)V

    .line 409
    return-void
.end method

.method public show(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 421
    if-nez p1, :cond_0

    .line 422
    iput-boolean v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFixed:Z

    .line 424
    :cond_0
    iget-boolean v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z

    if-nez v1, :cond_3

    .line 425
    invoke-direct {p0}, Lcom/adsdk/sdk/video/InterstitialController;->setProgress()I

    .line 426
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->showTopNavigationBar:Z

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 430
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->showBottomNavigationBar:Z

    if-eqz v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 433
    :cond_2
    iput-boolean v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z

    .line 435
    :cond_3
    invoke-direct {p0}, Lcom/adsdk/sdk/video/InterstitialController;->updateBackForward()V

    .line 439
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 441
    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFixed:Z

    if-nez v1, :cond_4

    .line 442
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 443
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 445
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->canToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->hide()V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->show()V

    goto :goto_0
.end method
