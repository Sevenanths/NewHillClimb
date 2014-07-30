.class Lcom/flurry/sdk/es$1;
.super Ljava/util/concurrent/ThreadPoolExecutor;
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
.method constructor <init>(Lcom/flurry/sdk/es;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/flurry/sdk/es$1;->a:Lcom/flurry/sdk/es;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 85
    instance-of v0, p1, Lcom/flurry/sdk/es$a;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Lcom/flurry/sdk/es$a;

    .line 87
    invoke-virtual {p1}, Lcom/flurry/sdk/es$a;->a()Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fj;

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/es$1;->a:Lcom/flurry/sdk/es;

    invoke-static {v1}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/es;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/es$1;->a:Lcom/flurry/sdk/es;

    invoke-static {v2}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/es;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v1, p0, Lcom/flurry/sdk/es$1;->a:Lcom/flurry/sdk/es;

    invoke-static {v1, v0}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/es;Lcom/flurry/sdk/fj;)V

    .line 100
    new-instance v1, Lcom/flurry/sdk/es$1$2;

    invoke-direct {v1, p0, v0}, Lcom/flurry/sdk/es$1$2;-><init>(Lcom/flurry/sdk/es$1;Lcom/flurry/sdk/fj;)V

    invoke-virtual {v1}, Lcom/flurry/sdk/es$1$2;->run()V

    .line 106
    :goto_1
    return-void

    .line 88
    :cond_0
    instance-of v0, p1, Lcom/flurry/sdk/fj;

    if-eqz v0, :cond_1

    .line 89
    check-cast p1, Lcom/flurry/sdk/fj;

    move-object v0, p1

    goto :goto_0

    .line 91
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

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 59
    instance-of v0, p2, Lcom/flurry/sdk/es$a;

    if-eqz v0, :cond_0

    .line 60
    check-cast p2, Lcom/flurry/sdk/es$a;

    .line 61
    invoke-virtual {p2}, Lcom/flurry/sdk/es$a;->a()Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fj;

    .line 69
    :goto_0
    new-instance v1, Lcom/flurry/sdk/es$1$1;

    invoke-direct {v1, p0, v0}, Lcom/flurry/sdk/es$1$1;-><init>(Lcom/flurry/sdk/es$1;Lcom/flurry/sdk/fj;)V

    invoke-virtual {v1}, Lcom/flurry/sdk/es$1$1;->run()V

    .line 75
    :goto_1
    return-void

    .line 62
    :cond_0
    instance-of v0, p2, Lcom/flurry/sdk/fj;

    if-eqz v0, :cond_1

    .line 63
    check-cast p2, Lcom/flurry/sdk/fj;

    move-object v0, p2

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x6

    invoke-static {}, Lcom/flurry/sdk/es;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown runnable class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/flurry/sdk/es$a;

    invoke-direct {v0, p1, p2}, Lcom/flurry/sdk/es$a;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 117
    iget-object v1, p0, Lcom/flurry/sdk/es$1;->a:Lcom/flurry/sdk/es;

    invoke-static {v1}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/es;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/es$1;->a:Lcom/flurry/sdk/es;

    invoke-static {v2}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/es;)Ljava/util/HashMap;

    move-result-object v2

    check-cast p1, Lcom/flurry/sdk/fj;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v1

    .line 121
    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Callable not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
