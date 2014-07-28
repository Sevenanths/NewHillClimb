.class Lcom/adsdk/sdk/mraid/MraidDisplayController$5;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/MraidDisplayController;->setNativeCloseButtonEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$5;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$5;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->close()V

    .line 371
    return-void
.end method
