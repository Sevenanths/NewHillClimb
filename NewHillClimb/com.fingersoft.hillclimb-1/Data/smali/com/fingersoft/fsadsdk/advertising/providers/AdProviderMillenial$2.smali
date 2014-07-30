.class Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$2;
.super Ljava/lang/Thread;
.source "AdProviderMillenial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->startRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;


# direct methods
.method constructor <init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$2;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;

    .line 148
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    :goto_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$2;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshEnabled:Z
    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->access$0(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$2;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;

    iget-object v1, v1, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$2;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->refreshTimeInMs:I
    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->access$1(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$2;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial$2;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;->stopRefresh()V

    goto :goto_0
.end method
