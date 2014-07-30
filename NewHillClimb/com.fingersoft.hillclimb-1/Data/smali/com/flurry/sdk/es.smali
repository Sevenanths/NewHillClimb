.class public Lcom/flurry/sdk/es;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/es$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flurry/sdk/fj;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/ek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ek",
            "<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/flurry/sdk/es;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/es;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lcom/flurry/sdk/es;-><init>(Ljava/lang/String;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    int-to-long v4, p3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/es;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/flurry/sdk/ek;

    invoke-direct {v0}, Lcom/flurry/sdk/ek;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/es;->b:Lcom/flurry/sdk/ek;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/es;->c:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/es;->d:Ljava/util/HashMap;

    .line 48
    new-instance v0, Lcom/flurry/sdk/es$1;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/es$1;-><init>(Lcom/flurry/sdk/es;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/flurry/sdk/es;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 125
    iget-object v0, p0, Lcom/flurry/sdk/es;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/flurry/sdk/es$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/es$2;-><init>(Lcom/flurry/sdk/es;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 158
    new-instance v0, Lcom/flurry/sdk/ff;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/flurry/sdk/ff;-><init>(Ljava/lang/String;I)V

    .line 159
    iget-object v1, p0, Lcom/flurry/sdk/es;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 160
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/flurry/sdk/es;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/es;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/flurry/sdk/es;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/es;Lcom/flurry/sdk/fj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/fj;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/fj;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/es;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/es;->c(Ljava/lang/Object;Lcom/flurry/sdk/fj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/Object;Lcom/flurry/sdk/fj;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/es;->b:Lcom/flurry/sdk/ek;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ek;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/flurry/sdk/es;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/Object;Lcom/flurry/sdk/fj;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/es;->b:Lcom/flurry/sdk/ek;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ek;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/flurry/sdk/es;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)J
    .locals 3
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 221
    monitor-enter p0

    if-nez p1, :cond_1

    .line 229
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 225
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/es;->b:Lcom/flurry/sdk/ek;

    invoke-virtual {v2, p1}, Lcom/flurry/sdk/ek;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 226
    if-eqz v2, :cond_0

    .line 229
    invoke-interface {v2}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;Lcom/flurry/sdk/fj;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 163
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 169
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 167
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/es;->b(Ljava/lang/Object;Lcom/flurry/sdk/fj;)V

    .line 168
    iget-object v0, p0, Lcom/flurry/sdk/es;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
