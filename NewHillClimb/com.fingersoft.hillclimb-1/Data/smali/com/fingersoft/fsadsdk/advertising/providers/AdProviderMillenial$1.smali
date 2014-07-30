.class Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$1;
.super Landroid/os/Handler;
.source "AdProviderMillenial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->adProviderCreate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;

.field private final synthetic val$weakSelf:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$1;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;

    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$1;->val$weakSelf:Ljava/lang/ref/WeakReference;

    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$1;->val$weakSelf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshAds()V

    return-void
.end method
