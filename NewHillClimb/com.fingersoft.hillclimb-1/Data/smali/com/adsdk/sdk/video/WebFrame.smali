.class public Lcom/adsdk/sdk/video/WebFrame;
.super Landroid/widget/FrameLayout;
.source "WebFrame.java"

# interfaces
.implements Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;
    }
.end annotation


# static fields
.field private static mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

.field private static mWebView_SetLayerType:Ljava/lang/reflect/Method;


# instance fields
.field private enableZoom:Z

.field private mActivity:Landroid/app/Activity;

.field private mController:Lcom/adsdk/sdk/video/InterstitialController;

.field private mExitButton:Landroid/widget/ImageView;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lcom/adsdk/sdk/video/WebFrame;->initCompatibility()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZZ)V
    .locals 11
    .parameter "context"
    .parameter "allowNavigation"
    .parameter "scroll"
    .parameter "showExit"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    .line 97
    invoke-static {}, Lcom/adsdk/sdk/video/WebFrame;->initCompatibility()V

    .line 98
    iput-object p1, p0, Lcom/adsdk/sdk/video/WebFrame;->mActivity:Landroid/app/Activity;

    .line 99
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    .line 100
    iget-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, p3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 101
    iget-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, p3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 102
    iget-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 103
    iget-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-static {v6}, Lcom/adsdk/sdk/video/WebFrame;->setLayer(Landroid/webkit/WebView;)V

    .line 104
    iget-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 105
    .local v5, webSettings:Landroid/webkit/WebSettings;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 106
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 107
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 108
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 109
    iget-boolean v6, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 110
    iget-boolean v6, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 113
    new-instance v6, Lcom/adsdk/sdk/video/WebViewClient;

    iget-object v7, p0, Lcom/adsdk/sdk/video/WebFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7, p2}, Lcom/adsdk/sdk/video/WebViewClient;-><init>(Landroid/app/Activity;Z)V

    iput-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    .line 114
    iget-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 118
    move-object v2, p1

    .line 119
    .local v2, localContext:Landroid/app/Activity;
    if-eqz p4, :cond_0

    .line 120
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, bg:Landroid/widget/ImageView;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 122
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    const/4 v7, -0x1

    .line 124
    const/4 v8, -0x1

    const/16 v9, 0x11

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 122
    invoke-virtual {p0, v0, v6}, Lcom/adsdk/sdk/video/WebFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 126
    const/4 v8, -0x1

    .line 127
    const/4 v9, -0x1

    const/16 v10, 0x11

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 125
    invoke-virtual {p0, v6, v7}, Lcom/adsdk/sdk/video/WebFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    .line 129
    iget-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 130
    iget-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    new-instance v7, Lcom/adsdk/sdk/video/WebFrame$1;

    invoke-direct {v7, p0, v2}, Lcom/adsdk/sdk/video/WebFrame$1;-><init>(Lcom/adsdk/sdk/video/WebFrame;Landroid/app/Activity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const/4 v6, 0x1

    const/high16 v7, 0x420c

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/WebFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 140
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 138
    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v1, v6

    .line 142
    .local v1, buttonSize:I
    iget-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    .line 143
    const/16 v7, -0x12

    invoke-static {p1, v7}, Lcom/adsdk/sdk/video/ResourceManager;->getStaticResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 142
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 146
    const/16 v6, 0x35

    .line 144
    invoke-direct {v4, v1, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 149
    .local v4, params:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, 0x1

    const/high16 v7, 0x40c0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/WebFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 150
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 148
    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v3, v6

    .line 151
    .local v3, margin:I
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 152
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 153
    iget-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v4}, Lcom/adsdk/sdk/video/WebFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .end local v0           #bg:Landroid/widget/ImageView;
    .end local v1           #buttonSize:I
    .end local v3           #margin:I
    .end local v4           #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v6, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 157
    const/4 v8, -0x1

    .line 158
    const/4 v9, -0x1

    const/16 v10, 0x11

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 156
    invoke-virtual {p0, v6, v7}, Lcom/adsdk/sdk/video/WebFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/WebFrame;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/adsdk/sdk/video/WebFrame;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/WebFrame;)Lcom/adsdk/sdk/video/WebViewClient;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/video/WebFrame;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private attachController()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mController:Lcom/adsdk/sdk/video/InterstitialController;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mController:Lcom/adsdk/sdk/video/InterstitialController;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/video/InterstitialController;->setBrowser(Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;)V

    .line 311
    :cond_0
    return-void
.end method

.method private getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initCompatibility()V
    .locals 7

    .prologue
    .line 53
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    .local v1, m:Ljava/lang/reflect/Method;
    :goto_0
    if-lt v2, v4, :cond_0

    .line 60
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set layer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/adsdk/sdk/video/WebFrame;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 61
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/adsdk/sdk/video/WebFrame;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set1 layer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/adsdk/sdk/video/WebFrame;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 74
    :goto_2
    return-void

    .line 53
    :cond_0
    aget-object v1, v3, v2

    .line 54
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setLayerType"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    sput-object v1, Lcom/adsdk/sdk/video/WebFrame;->mWebView_SetLayerType:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "SecurityException"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_2

    .line 53
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v2, "NoSuchFieldException"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static setLayer(Landroid/webkit/WebView;)V
    .locals 7
    .parameter "webView"

    .prologue
    .line 77
    sget-object v2, Lcom/adsdk/sdk/video/WebFrame;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/adsdk/sdk/video/WebFrame;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 79
    :try_start_0
    const-string v2, "Set Layer is supported"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 80
    sget-object v2, Lcom/adsdk/sdk/video/WebFrame;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/adsdk/sdk/video/WebFrame;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    const-class v6, Landroid/webkit/WebView;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 92
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, ite:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Set InvocationTargetException"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v1           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Set IllegalArgumentException"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v2, "Set IllegalAccessException"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_0
    const-string v2, "Set Layer is not supported"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public getPageTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()I
    .locals 5

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 316
    .local v2, time:I
    iget-object v3, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    invoke-virtual {v3}, Lcom/adsdk/sdk/video/WebViewClient;->getFinishedLoadingTime()J

    move-result-wide v0

    .line 317
    .local v0, finishedLoadedTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-int v2, v3

    .line 320
    .end local v2           #time:I
    :cond_0
    return v2
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 282
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 292
    return-void
.end method

.method public isEnableZoom()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    return v0
.end method

.method public launchExternalBrowser()V
    .locals 4

    .prologue
    .line 326
    iget-object v2, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    invoke-virtual {v2}, Lcom/adsdk/sdk/video/WebViewClient;->getAllowedUrl()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 328
    :cond_0
    const-string v1, "about:blank"

    .line 330
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 331
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/adsdk/sdk/video/WebFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 332
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 165
    new-instance v0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;-><init>(Lcom/adsdk/sdk/video/WebFrame;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/video/WebFrame;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 297
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 177
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 178
    return-void
.end method

.method public setBrowserController(Lcom/adsdk/sdk/video/InterstitialController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mController:Lcom/adsdk/sdk/video/InterstitialController;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mController:Lcom/adsdk/sdk/video/InterstitialController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/InterstitialController;->hide()V

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/adsdk/sdk/video/WebFrame;->mController:Lcom/adsdk/sdk/video/InterstitialController;

    .line 304
    invoke-direct {p0}, Lcom/adsdk/sdk/video/WebFrame;->attachController()V

    .line 305
    return-void
.end method

.method public setEnableZoom(Z)V
    .locals 2
    .parameter "enableZoom"

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    .line 349
    iget-object v1, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 350
    .local v0, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 351
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 352
    return-void
.end method

.method public setMarkup(Ljava/lang/String;)V
    .locals 4
    .parameter "htmlMarkup"

    .prologue
    .line 169
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, data:Ljava/lang/String;
    iget-object v1, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/WebViewClient;->setAllowedUrl(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setOnPageLoadedListener(Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/video/WebViewClient;->setOnPageLoadedListener(Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;)V

    .line 341
    return-void
.end method
