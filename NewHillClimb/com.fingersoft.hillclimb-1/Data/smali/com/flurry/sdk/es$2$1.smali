.class Lcom/flurry/sdk/es$2$1;
.super Lcom/flurry/sdk/fi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/es$2;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fj;

.field final synthetic b:Lcom/flurry/sdk/es$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/es$2;Lcom/flurry/sdk/fj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/flurry/sdk/es$2$1;->b:Lcom/flurry/sdk/es$2;

    iput-object p2, p0, Lcom/flurry/sdk/es$2$1;->a:Lcom/flurry/sdk/fj;

    invoke-direct {p0}, Lcom/flurry/sdk/fi;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/flurry/sdk/es$2$1;->a:Lcom/flurry/sdk/fj;

    invoke-virtual {v0}, Lcom/flurry/sdk/fj;->c()V

    .line 153
    return-void
.end method
