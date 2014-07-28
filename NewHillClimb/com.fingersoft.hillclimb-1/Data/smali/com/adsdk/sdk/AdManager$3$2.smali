.class Lcom/adsdk/sdk/AdManager$3$2;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/AdManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/AdManager$3;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$3$2;->this$1:Lcom/adsdk/sdk/AdManager$3;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3$2;->this$1:Lcom/adsdk/sdk/AdManager$3;

    #getter for: Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager$3;->access$0(Lcom/adsdk/sdk/AdManager$3;)Lcom/adsdk/sdk/AdManager;

    move-result-object v0

    #calls: Lcom/adsdk/sdk/AdManager;->notifyNoAdFound()V
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$3(Lcom/adsdk/sdk/AdManager;)V

    .line 263
    return-void
.end method
