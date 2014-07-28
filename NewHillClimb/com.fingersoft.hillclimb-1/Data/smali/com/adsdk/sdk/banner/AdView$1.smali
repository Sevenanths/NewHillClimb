.class Lcom/adsdk/sdk/banner/AdView$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/banner/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$1;->this$0:Lcom/adsdk/sdk/banner/AdView;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$1;->this$0:Lcom/adsdk/sdk/banner/AdView;

    #calls: Lcom/adsdk/sdk/banner/AdView;->showContent()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$0(Lcom/adsdk/sdk/banner/AdView;)V

    .line 74
    return-void
.end method
