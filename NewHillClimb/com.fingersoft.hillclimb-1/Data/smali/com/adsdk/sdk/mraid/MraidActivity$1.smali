.class Lcom/adsdk/sdk/mraid/MraidActivity$1;
.super Ljava/lang/Object;
.source "MraidActivity.java"

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidActivity$1;->this$0:Lcom/adsdk/sdk/mraid/MraidActivity;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidActivity$1;->this$0:Lcom/adsdk/sdk/mraid/MraidActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidActivity;->showInterstitialCloseButton()V

    .line 20
    return-void
.end method
