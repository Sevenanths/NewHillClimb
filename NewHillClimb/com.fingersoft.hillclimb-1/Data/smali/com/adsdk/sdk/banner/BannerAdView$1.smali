.class Lcom/adsdk/sdk/banner/BannerAdView$1;
.super Landroid/webkit/WebView;
.source "BannerAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/banner/BannerAdView;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/BannerAdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/BannerAdView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView$1;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    .line 180
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView$1;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView$1;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 185
    invoke-super {p0, p1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 186
    :cond_0
    return-void
.end method
