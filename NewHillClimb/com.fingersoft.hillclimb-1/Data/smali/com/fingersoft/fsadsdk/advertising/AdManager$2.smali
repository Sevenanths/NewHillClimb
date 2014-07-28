.class Lcom/fingersoft/fsadsdk/advertising/AdManager$2;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;


# direct methods
.method constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$2;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdManager$2;->this$0:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    #calls: Lcom/fingersoft/fsadsdk/advertising/AdManager;->startAdViewInternal()V
    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->access$1(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V

    return-void
.end method
