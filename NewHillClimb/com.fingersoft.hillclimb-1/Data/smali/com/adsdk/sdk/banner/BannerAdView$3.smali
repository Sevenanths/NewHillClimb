.class Lcom/adsdk/sdk/banner/BannerAdView$3;
.super Landroid/widget/ViewFlipper;
.source "BannerAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/banner/BannerAdView;->buildBannerView()V
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
    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView$3;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    .line 287
    invoke-direct {p0, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 296
    :try_start_0
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView$3;->stopFlipping()V

    goto :goto_0
.end method
