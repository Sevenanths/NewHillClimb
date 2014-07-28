.class public Lcom/adsdk/sdk/banner/BannerAdView;
.super Landroid/widget/RelativeLayout;
.source "BannerAdView.java"


# static fields
.field public static final LIVE:I = 0x0

.field public static final TEST:I = 0x1

.field private static mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

.field private static mWebView_SetLayerType:Ljava/lang/reflect/Method;


# instance fields
.field private adListener:Lcom/adsdk/sdk/AdListener;

.field private animation:Z

.field private fadeInAnimation:Landroid/view/animation/Animation;

.field private fadeOutAnimation:Landroid/view/animation/Animation;

.field private firstWebView:Landroid/webkit/WebView;

.field private isInternalBrowser:Z

.field private mContext:Landroid/content/Context;

.field protected mIsInForeground:Z

.field private response:Lcom/adsdk/sdk/BannerAd;

.field private secondWebView:Landroid/webkit/WebView;

.field private touchMove:Z

.field private final updateHandler:Landroid/os/Handler;

.field private viewFlipper:Landroid/widget/ViewFlipper;

.field private webSettings:Landroid/webkit/WebSettings;

.field private xml:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 237
    invoke-static {}, Lcom/adsdk/sdk/banner/BannerAdView;->initCompatibility()V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/BannerAd;Lcom/adsdk/sdk/AdListener;)V
    .locals 1
    .parameter "context"
    .parameter "response"
    .parameter "adListener"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/adsdk/sdk/banner/BannerAdView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/BannerAd;ZLcom/adsdk/sdk/AdListener;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/BannerAd;ZLcom/adsdk/sdk/AdListener;)V
    .locals 2
    .parameter "context"
    .parameter "response"
    .parameter "animation"
    .parameter "adListener"

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->isInternalBrowser:Z

    .line 59
    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    .line 60
    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeOutAnimation:Landroid/view/animation/Animation;

    .line 63
    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->updateHandler:Landroid/os/Handler;

    .line 172
    iput-object p2, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    .line 173
    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    .line 174
    iput-boolean p3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->animation:Z

    .line 175
    iput-object p4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->adListener:Lcom/adsdk/sdk/AdListener;

    .line 176
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/BannerAdView;->initialize(Landroid/content/Context;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;Z)V
    .locals 2
    .parameter "context"
    .parameter "xml"
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->isInternalBrowser:Z

    .line 59
    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    .line 60
    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeOutAnimation:Landroid/view/animation/Animation;

    .line 63
    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->updateHandler:Landroid/os/Handler;

    .line 152
    iput-object p2, p0, Lcom/adsdk/sdk/banner/BannerAdView;->xml:Ljava/io/InputStream;

    .line 153
    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    .line 154
    iput-boolean p3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->animation:Z

    .line 155
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/BannerAdView;->initialize(Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/banner/BannerAdView;)Lcom/adsdk/sdk/BannerAd;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/banner/BannerAdView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/BannerAdView;->doOpenUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/banner/BannerAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->openLink()V

    return-void
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/banner/BannerAdView;)Lcom/adsdk/sdk/AdListener;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->adListener:Lcom/adsdk/sdk/AdListener;

    return-object v0
.end method

.method private buildBannerView()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/high16 v6, 0x3f00

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 284
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->firstWebView:Landroid/webkit/WebView;

    .line 285
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->secondWebView:Landroid/webkit/WebView;

    .line 286
    const-string v0, "ADSDK"

    const-string v3, "Create view flipper"

    invoke-static {v0, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v0, Lcom/adsdk/sdk/banner/BannerAdView$3;

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/adsdk/sdk/banner/BannerAdView$3;-><init>(Lcom/adsdk/sdk/banner/BannerAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 302
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    .line 303
    .local v10, scale:F
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x4396

    mul-float/2addr v3, v10

    add-float/2addr v3, v6

    float-to-int v3, v3

    const/high16 v4, 0x4248

    mul-float/2addr v4, v10

    add-float/2addr v4, v6

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 307
    .local v11, webViewParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->firstWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3, v11}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->secondWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3, v11}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 313
    .local v9, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, v0, v9}, Lcom/adsdk/sdk/banner/BannerAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    const-string v0, "ADSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "animation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->animation:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-boolean v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->animation:Z

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 324
    const/high16 v6, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    .line 325
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 321
    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    .line 326
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 329
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 333
    const/high16 v8, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 329
    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeOutAnimation:Landroid/view/animation/Animation;

    .line 334
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 335
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 336
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 338
    :cond_0
    return-void
.end method

.method private createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 180
    new-instance v0, Lcom/adsdk/sdk/banner/BannerAdView$1;

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adsdk/sdk/banner/BannerAdView$1;-><init>(Lcom/adsdk/sdk/banner/BannerAdView;Landroid/content/Context;)V

    .line 189
    .local v0, webView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->webSettings:Landroid/webkit/WebSettings;

    .line 190
    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->webSettings:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 191
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 192
    invoke-static {v0}, Lcom/adsdk/sdk/banner/BannerAdView;->setLayer(Landroid/webkit/WebView;)V

    .line 194
    new-instance v1, Lcom/adsdk/sdk/banner/BannerAdView$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/BannerAdView$2;-><init>(Lcom/adsdk/sdk/banner/BannerAdView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 209
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 210
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 212
    return-object v0
.end method

.method private doOpenUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->notifyAdClicked()V

    .line 217
    iget-object v2, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v2}, Lcom/adsdk/sdk/BannerAd;->getClickType()Lcom/adsdk/sdk/data/ClickType;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v2}, Lcom/adsdk/sdk/BannerAd;->getClickType()Lcom/adsdk/sdk/data/ClickType;

    move-result-object v2

    sget-object v3, Lcom/adsdk/sdk/data/ClickType;->INAPP:Lcom/adsdk/sdk/data/ClickType;

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/data/ClickType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "http://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    :cond_0
    const-string v2, ".mp4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, i:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 234
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 225
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 226
    const-class v3, Lcom/adsdk/sdk/banner/InAppWebView;

    .line 225
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "REDIRECT_URI"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 232
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static initCompatibility()V
    .locals 7

    .prologue
    .line 242
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    .local v1, m:Ljava/lang/reflect/Method;
    :goto_0
    if-lt v2, v4, :cond_0

    .line 249
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set layer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 250
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set1 layer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 263
    :goto_2
    return-void

    .line 242
    :cond_0
    aget-object v1, v3, v2

    .line 243
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setLayerType"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 244
    sput-object v1, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_SetLayerType:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 256
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "SecurityException"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_2

    .line 242
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :catch_1
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v2, "NoSuchFieldException"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 341
    invoke-static {}, Lcom/adsdk/sdk/banner/BannerAdView;->initCompatibility()V

    .line 342
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->buildBannerView()V

    .line 343
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->showContent()V

    .line 344
    return-void
.end method

.method private notifyAdClicked()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->updateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/BannerAdView$4;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/BannerAdView$4;-><init>(Lcom/adsdk/sdk/banner/BannerAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    return-void
.end method

.method private notifyLoadAdSucceeded()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->updateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/BannerAdView$5;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/BannerAdView$5;-><init>(Lcom/adsdk/sdk/banner/BannerAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    return-void
.end method

.method private openLink()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->doOpenUrl(Ljava/lang/String;)V

    .line 417
    :cond_0
    return-void
.end method

.method private static setLayer(Landroid/webkit/WebView;)V
    .locals 7
    .parameter "webView"

    .prologue
    .line 266
    sget-object v2, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 268
    :try_start_0
    const-string v2, "Set Layer is supported"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 269
    sget-object v2, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

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

    .line 281
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, ite:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Set InvocationTargetException"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    .end local v1           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Set IllegalArgumentException"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v2, "Set IllegalAccessException"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_0
    const-string v2, "Set Layer is not supported"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showContent()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 437
    :try_start_0
    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->firstWebView:Landroid/webkit/WebView;

    if-ne v3, v4, :cond_1

    .line 438
    iget-object v2, p0, Lcom/adsdk/sdk/banner/BannerAdView;->secondWebView:Landroid/webkit/WebView;

    .line 441
    .local v2, webView:Landroid/webkit/WebView;
    :goto_0
    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v3}, Lcom/adsdk/sdk/BannerAd;->getType()I

    move-result v3

    if-nez v3, :cond_2

    .line 443
    const-string v3, "<body style=\'\"\'margin: 0px; padding: 0px; text-align:center;\'\"\'><img src=\'\"\'{0}\'\"\' width=\'\"\'{1}\'dp\"\' height=\'\"\'{2}\'dp\"\'/></body>"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 444
    iget-object v6, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v6}, Lcom/adsdk/sdk/BannerAd;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 445
    iget-object v6, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v6}, Lcom/adsdk/sdk/BannerAd;->getBannerWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 446
    iget-object v6, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v6}, Lcom/adsdk/sdk/BannerAd;->getBannerHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 443
    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, text:Ljava/lang/String;
    const-string v3, "ADSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set image: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<style>* { -webkit-tap-highlight-color: rgba(0,0,0,0);} img {width:100%;height:100%}</style>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual {v2, v1, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->notifyLoadAdSucceeded()V

    .line 463
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->firstWebView:Landroid/webkit/WebView;

    if-ne v3, v4, :cond_3

    .line 464
    const-string v3, "ADSDK"

    const-string v4, "show next"

    invoke-static {v3, v4}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->showNext()V

    .line 475
    .end local v2           #webView:Landroid/webkit/WebView;
    :goto_2
    return-void

    .line 440
    :cond_1
    iget-object v2, p0, Lcom/adsdk/sdk/banner/BannerAdView;->firstWebView:Landroid/webkit/WebView;

    .restart local v2       #webView:Landroid/webkit/WebView;
    goto :goto_0

    .line 451
    :cond_2
    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v3}, Lcom/adsdk/sdk/BannerAd;->getType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<style>* { -webkit-tap-highlight-color: rgba(0,0,0,0);} img {width:100%;height:100%}</style>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    iget-object v4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v4}, Lcom/adsdk/sdk/BannerAd;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 452
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .restart local v1       #text:Ljava/lang/String;
    const-string v3, "ADSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set text: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual {v2, v1, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->notifyLoadAdSucceeded()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 472
    .end local v1           #text:Ljava/lang/String;
    .end local v2           #webView:Landroid/webkit/WebView;
    :catch_0
    move-exception v0

    .line 473
    .local v0, t:Ljava/lang/Throwable;
    const-string v3, "ADSDK"

    const-string v4, "Exception in show content"

    invoke-static {v3, v4, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 467
    .end local v0           #t:Ljava/lang/Throwable;
    .restart local v2       #webView:Landroid/webkit/WebView;
    :cond_3
    :try_start_1
    const-string v3, "ADSDK"

    const-string v4, "show previous"

    invoke-static {v3, v4}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->showPrevious()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public isInternalBrowser()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->isInternalBrowser:Z

    return v0
.end method

.method public setAdListener(Lcom/adsdk/sdk/AdListener;)V
    .locals 0
    .parameter "bannerListener"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->adListener:Lcom/adsdk/sdk/AdListener;

    .line 426
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 87
    return-void
.end method

.method public setInternalBrowser(Z)V
    .locals 0
    .parameter "isInternalBrowser"

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->isInternalBrowser:Z

    .line 430
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 84
    return-void
.end method
