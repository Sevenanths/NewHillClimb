.class Lcom/flurry/sdk/cf$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/cf;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/cf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cf;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/flurry/sdk/cf$5;->b:Lcom/flurry/sdk/cf;

    iput-object p2, p0, Lcom/flurry/sdk/cf$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/flurry/sdk/cf$5;->b:Lcom/flurry/sdk/cf;

    invoke-virtual {v0}, Lcom/flurry/sdk/cf;->f()V

    .line 313
    iget-object v0, p0, Lcom/flurry/sdk/cf$5;->b:Lcom/flurry/sdk/cf;

    iget-object v0, v0, Lcom/flurry/sdk/cf;->e:Ljava/util/Set;

    iget-object v1, p0, Lcom/flurry/sdk/cf$5;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/cf;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error. Block with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/cf$5;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not in progress state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    return-void
.end method
