.class public Lcom/fingersoft/game/InAppPurchaseStore;
.super Ljava/lang/Object;
.source "InAppPurchaseStore.java"


# static fields
.field static final PREFS_NAME:Ljava/lang/String; = "iap_db"

.field static final PREFS_PROCESSED:Ljava/lang/String; = "iap_processed"

.field static volatile mAdFree:I

.field static volatile mCoins:I

.field static volatile mLoaded:Z

.field static volatile mModified:Z

.field static volatile mProcessedOrders:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    sput-boolean v1, Lcom/fingersoft/game/InAppPurchaseStore;->mModified:Z

    .line 14
    sput v1, Lcom/fingersoft/game/InAppPurchaseStore;->mCoins:I

    .line 15
    sput v1, Lcom/fingersoft/game/InAppPurchaseStore;->mAdFree:I

    .line 16
    const-string v0, ""

    sput-object v0, Lcom/fingersoft/game/InAppPurchaseStore;->mProcessedOrders:Ljava/lang/String;

    .line 17
    sput-boolean v1, Lcom/fingersoft/game/InAppPurchaseStore;->mLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addCoins(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "coins"

    .prologue
    .line 38
    const-class v1, Lcom/fingersoft/game/InAppPurchaseStore;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/fingersoft/game/InAppPurchaseStore;->mModified:Z

    .line 40
    sget-boolean v0, Lcom/fingersoft/game/InAppPurchaseStore;->mLoaded:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/fingersoft/game/InAppPurchaseStore;->loadStore(Landroid/content/Context;)V

    .line 42
    :cond_0
    sget v0, Lcom/fingersoft/game/InAppPurchaseStore;->mCoins:I

    add-int/2addr v0, p1

    sput v0, Lcom/fingersoft/game/InAppPurchaseStore;->mCoins:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v1

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getAdFree(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 69
    const-class v1, Lcom/fingersoft/game/InAppPurchaseStore;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/fingersoft/game/InAppPurchaseStore;->mModified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 78
    :goto_0
    monitor-exit v1

    return v0

    .line 72
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/fingersoft/game/InAppPurchaseStore;->mLoaded:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/fingersoft/game/InAppPurchaseStore;->loadStore(Landroid/content/Context;)V

    .line 75
    :cond_1
    sget v0, Lcom/fingersoft/game/InAppPurchaseStore;->mAdFree:I

    if-lez v0, :cond_2

    .line 76
    const-string v0, "IAP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Player received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/fingersoft/game/InAppPurchaseStore;->mAdFree:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stored ad-free"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    sget v0, Lcom/fingersoft/game/InAppPurchaseStore;->mAdFree:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCoins(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 56
    const-class v1, Lcom/fingersoft/game/InAppPurchaseStore;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/fingersoft/game/InAppPurchaseStore;->mModified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 64
    :goto_0
    monitor-exit v1

    return v0

    .line 59
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/fingersoft/game/InAppPurchaseStore;->mLoaded:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/fingersoft/game/InAppPurchaseStore;->loadStore(Landroid/content/Context;)V

    .line 61
    :cond_1
    sget v0, Lcom/fingersoft/game/InAppPurchaseStore;->mCoins:I

    if-lez v0, :cond_2

    .line 62
    const-string v0, "IAP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Player received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/fingersoft/game/InAppPurchaseStore;->mCoins:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stored coins"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_2
    sget v0, Lcom/fingersoft/game/InAppPurchaseStore;->mCoins:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized inappPurchasesProcessed(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 83
    const-class v2, Lcom/fingersoft/game/InAppPurchaseStore;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/fingersoft/game/InAppPurchaseStore;->mCoins:I

    .line 84
    const/4 v1, 0x0

    sput v1, Lcom/fingersoft/game/InAppPurchaseStore;->mAdFree:I

    .line 86
    const-string v1, "iap_db"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    const/4 v1, 0x0

    sput-boolean v1, Lcom/fingersoft/game/InAppPurchaseStore;->mModified:Z

    .line 90
    const-string v1, "IAP"

    const-string v3, "inappPurchasesProcessed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit v2

    return-void

    .line 83
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized isOrderProcessed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "orderId"

    .prologue
    const/4 v1, 0x1

    .line 95
    const-class v2, Lcom/fingersoft/game/InAppPurchaseStore;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/fingersoft/game/InAppPurchaseStore;->mLoaded:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/fingersoft/game/InAppPurchaseStore;->loadStore(Landroid/content/Context;)V

    .line 97
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, order:Ljava/lang/String;
    sget-object v3, Lcom/fingersoft/game/InAppPurchaseStore;->mProcessedOrders:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, v1, :cond_1

    .line 103
    :goto_0
    monitor-exit v2

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 95
    .end local v0           #order:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static loadStore(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 21
    const-string v0, "iap_processed"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "processed_orders"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fingersoft/game/InAppPurchaseStore;->mProcessedOrders:Ljava/lang/String;

    .line 23
    const-string v0, "iap_db"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "numCoins"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fingersoft/game/InAppPurchaseStore;->mCoins:I

    .line 24
    const-string v0, "iap_db"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "adfree"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fingersoft/game/InAppPurchaseStore;->mAdFree:I

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fingersoft/game/InAppPurchaseStore;->mLoaded:Z

    .line 26
    return-void
.end method

.method public static declared-synchronized markAsProcessed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "orderId"

    .prologue
    .line 108
    const-class v3, Lcom/fingersoft/game/InAppPurchaseStore;

    monitor-enter v3

    if-eqz p1, :cond_0

    .line 110
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, order:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fingersoft/game/InAppPurchaseStore;->mProcessedOrders:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fingersoft/game/InAppPurchaseStore;->mProcessedOrders:Ljava/lang/String;

    .line 114
    const-string v2, "iap_processed"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "processed_orders"

    sget-object v4, Lcom/fingersoft/game/InAppPurchaseStore;->mProcessedOrders:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #order:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/fingersoft/game/InAppPurchaseStore;->saveStore(Landroid/content/Context;)V

    .line 120
    const/4 v2, 0x0

    sput-boolean v2, Lcom/fingersoft/game/InAppPurchaseStore;->mModified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit v3

    return-void

    .line 108
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static saveStore(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 30
    const-string v1, "iap_db"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 31
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "numCoins"

    sget v2, Lcom/fingersoft/game/InAppPurchaseStore;->mCoins:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 32
    const-string v1, "adFree"

    sget v2, Lcom/fingersoft/game/InAppPurchaseStore;->mAdFree:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    return-void
.end method

.method public static declared-synchronized setAdFree(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    const-class v1, Lcom/fingersoft/game/InAppPurchaseStore;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/fingersoft/game/InAppPurchaseStore;->mModified:Z

    .line 49
    sget-boolean v0, Lcom/fingersoft/game/InAppPurchaseStore;->mLoaded:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/fingersoft/game/InAppPurchaseStore;->loadStore(Landroid/content/Context;)V

    .line 51
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/fingersoft/game/InAppPurchaseStore;->mAdFree:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v1

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
