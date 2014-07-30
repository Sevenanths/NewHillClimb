.class public Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;
.super Ljava/lang/Object;
.source "UrlBuilder.java"


# instance fields
.field private keyValMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private parameterStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field url:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;->keyValMap:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;->parameterStrings:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;->url:Ljava/lang/StringBuilder;

    .line 17
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;
    .locals 1
    .parameter "parameterKeyValString"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;->parameterStrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;->keyValMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-object p0
.end method

.method public buildUrl(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 8
    .parameter "prependQuestionMark"

    .prologue
    .line 39
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;->keyValMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 40
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;->url:Ljava/lang/StringBuilder;

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, counter:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 49
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;->parameterStrings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 53
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;->url:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 44
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 45
    .local v3, pairs:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;->url:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v4, "&"

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_2
    const-string v4, ""

    goto :goto_2

    .line 49
    .end local v3           #pairs:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, keyValString:Ljava/lang/String;
    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;->url:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    const-string v4, "&"

    :goto_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v4, ""

    goto :goto_3
.end method

.method public clear()Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/utils/UrlBuilder;->url:Ljava/lang/StringBuilder;

    .line 34
    return-object p0
.end method
