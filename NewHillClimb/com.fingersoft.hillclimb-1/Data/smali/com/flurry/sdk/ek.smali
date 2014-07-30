.class public Lcom/flurry/sdk/ek;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ek;->a:Ljava/util/Map;

    .line 20
    return-void
.end method

.method private a(Ljava/lang/Object;Z)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flurry/sdk/ek;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 152
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 153
    iget v0, p0, Lcom/flurry/sdk/ek;->b:I

    if-lez v0, :cond_1

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/flurry/sdk/ek;->b:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/ek;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    return-object v0

    .line 156
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/ek;->a(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/ek;->a(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 60
    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/ek;->a(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/flurry/sdk/ek;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
