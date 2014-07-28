.class Lcom/adsdk/sdk/mraid/MraidActivity$2;
.super Ljava/lang/Object;
.source "MraidActivity.java"

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/MraidActivity;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidActivity$2;->this$0:Lcom/adsdk/sdk/mraid/MraidActivity;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseButtonStateChange(Lcom/adsdk/sdk/mraid/MraidView;Z)V
    .locals 1
    .parameter "view"
    .parameter "enabled"

    .prologue
    .line 25
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidActivity$2;->this$0:Lcom/adsdk/sdk/mraid/MraidActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidActivity;->showInterstitialCloseButton()V

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidActivity$2;->this$0:Lcom/adsdk/sdk/mraid/MraidActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidActivity;->hideInterstitialCloseButton()V

    goto :goto_0
.end method
