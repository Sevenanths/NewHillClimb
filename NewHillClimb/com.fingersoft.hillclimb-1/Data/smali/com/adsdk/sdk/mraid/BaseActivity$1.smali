.class Lcom/adsdk/sdk/mraid/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/BaseActivity;->showInterstitialCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/BaseActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/BaseActivity$1;->this$0:Lcom/adsdk/sdk/mraid/BaseActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseActivity$1;->this$0:Lcom/adsdk/sdk/mraid/BaseActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseActivity;->finish()V

    .line 52
    return-void
.end method
