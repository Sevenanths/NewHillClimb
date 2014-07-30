.class public Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdAssignedByR(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "pContext"
    .parameter "pIdString"

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 15
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, packageName:Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v1, p1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 19
    .local v2, result:I
    return v2
.end method

.method public static getResourceIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "name"

    .prologue
    .line 24
    const/4 v5, 0x0

    .line 25
    .local v5, r:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 29
    .local v4, id:I
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".R"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 30
    invoke-virtual {v5}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 31
    .local v0, classes:[Ljava/lang/Class;
    const/4 v1, 0x0

    .line 33
    .local v1, desiredClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v0

    if-lt v3, v6, :cond_1

    .line 42
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .end local v0           #classes:[Ljava/lang/Class;
    .end local v1           #desiredClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #i:I
    :cond_0
    :goto_2
    move v6, v4

    .line 65
    :goto_3
    return v6

    .line 35
    .restart local v0       #classes:[Ljava/lang/Class;
    .restart local v1       #desiredClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #i:I
    :cond_1
    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 37
    aget-object v1, v0, v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4

    .line 38
    goto :goto_1

    .line 33
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v0           #classes:[Ljava/lang/Class;
    .end local v1           #desiredClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 46
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v6, "Failed to find .R class, searching by identifier"

    invoke-static {v6}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p3, p2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 49
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 51
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 53
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 55
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 57
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 59
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 61
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 63
    .local v2, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2
.end method
