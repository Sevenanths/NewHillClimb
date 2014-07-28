.class public Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;
.super Ljava/lang/Object;
.source "ApplicationSettings.java"


# static fields
.field static final SETTINGS_NAME:Ljava/lang/String; = "APP_SETTINGS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValueInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .parameter "applicationContext"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 27
    :try_start_0
    const-string v1, "APP_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 34
    .end local v0           #value:Ljava/lang/String;
    .end local p2
    :goto_0
    return p2

    .line 30
    .restart local p2
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getValueString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "applicationContext"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 41
    :try_start_0
    const-string v1, "APP_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v1

    move-object v0, p2

    .line 48
    goto :goto_0
.end method

.method public static hasValue(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "applicationContext"
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 55
    :try_start_0
    const-string v1, "APP_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 61
    :goto_0
    return v0

    .line 57
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "applicationContext"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 13
    :try_start_0
    const-string v2, "APP_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 14
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 15
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v2

    goto :goto_0
.end method
