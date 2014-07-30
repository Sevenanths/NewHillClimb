.class Lcom/flurry/sdk/es$2;
.super Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/es;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/es;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/es;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/flurry/sdk/es$2;->a:Lcom/flurry/sdk/es;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 134
    instance-of v0, p1, Lcom/flurry/sdk/es$a;

    if-eqz v0, :cond_0

    .line 135
    check-cast p1, Lcom/flurry/sdk/es$a;

    .line 136
    invoke-virtual {p1}, Lcom/flurry/sdk/es$a;->a()Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fj;

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/es$2;->a:Lcom/flurry/sdk/es;

    invoke-static {v1}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/es;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/es$2;->a:Lcom/flurry/sdk/es;

    invoke-static {v2}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/es;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v1, p0, Lcom/flurry/sdk/es$2;->a:Lcom/flurry/sdk/es;

    invoke-static {v1, v0}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/es;Lcom/flurry/sdk/fj;)V

    .line 149
    new-instance v1, Lcom/flurry/sdk/es$2$1;

    invoke-direct {v1, p0, v0}, Lcom/flurry/sdk/es$2$1;-><init>(Lcom/flurry/sdk/es$2;Lcom/flurry/sdk/fj;)V

    invoke-virtual {v1}, Lcom/flurry/sdk/es$2$1;->run()V

    .line 155
    :goto_1
    return-void

    .line 137
    :cond_0
    instance-of v0, p1, Lcom/flurry/sdk/fj;

    if-eqz v0, :cond_1

    .line 138
    check-cast p1, Lcom/flurry/sdk/fj;

    move-object v0, p1

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x6

    invoke-static {}, Lcom/flurry/sdk/es;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown runnable class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
