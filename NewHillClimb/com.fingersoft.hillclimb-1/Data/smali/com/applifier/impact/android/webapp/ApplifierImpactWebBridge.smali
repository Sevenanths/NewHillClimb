.class public Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;
.super Ljava/lang/Object;
.source "ApplifierImpactWebBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent:[I


# instance fields
.field private _listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;


# direct methods
.method static synthetic $SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->values()[Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->CloseView:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->InitComplete:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->NavigateTo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->PauseVideo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->PlayStore:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->PlayVideo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;

    .line 54
    iput-object p1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;

    .line 55
    return-void
.end method

.method private getEventType(Ljava/lang/String;)Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;
    .locals 5
    .parameter "event"

    .prologue
    .line 45
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->values()[Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 50
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 45
    :cond_1
    aget-object v0, v2, v1

    .line 46
    .local v0, evt:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;
    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleWebEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "type"
    .parameter "data"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 59
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "handleWebEvent: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    iget-object v9, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;

    if-eqz v9, :cond_0

    if-nez p2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v8

    .line 63
    :cond_1
    const/4 v5, 0x0

    .line 64
    .local v5, jsonData:Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 65
    .local v7, parameters:Lorg/json/JSONObject;
    move-object v2, p1

    .line 68
    .local v2, event:Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v5           #jsonData:Lorg/json/JSONObject;
    .local v6, jsonData:Lorg/json/JSONObject;
    :try_start_1
    const-string v9, "data"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v7

    move-object v5, v6

    .line 75
    .end local v6           #jsonData:Lorg/json/JSONObject;
    .restart local v5       #jsonData:Lorg/json/JSONObject;
    :goto_1
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 77
    invoke-direct {p0, v2}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;->getEventType(Ljava/lang/String;)Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    move-result-object v3

    .line 79
    .local v3, eventType:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;
    if-eqz v3, :cond_0

    .line 81
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent()[I

    move-result-object v9

    invoke-virtual {v3}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 124
    :cond_2
    :goto_2
    const/4 v8, 0x1

    goto :goto_0

    .line 71
    .end local v3           #eventType:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error while parsing parameters: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 83
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #eventType:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;
    :pswitch_0
    iget-object v8, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;

    invoke-interface {v8, v7}, Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;->onPlayVideo(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 86
    :pswitch_1
    iget-object v8, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;

    invoke-interface {v8, v7}, Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;->onPauseVideo(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 89
    :pswitch_2
    iget-object v8, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;

    invoke-interface {v8, v7}, Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;->onCloseImpactView(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 92
    :pswitch_3
    iget-object v8, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;

    invoke-interface {v8, v7}, Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;->onWebAppInitComplete(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 95
    :pswitch_4
    iget-object v8, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;->_listener:Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;

    invoke-interface {v8, v7}, Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;->onOpenPlayStore(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 98
    :pswitch_5
    const-string v9, "clickUrl"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 99
    const/4 v0, 0x0

    .line 102
    .local v0, clickUrl:Ljava/lang/String;
    :try_start_2
    const-string v9, "clickUrl"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2

    .line 111
    :try_start_3
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v4, i:Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 113
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 115
    .end local v4           #i:Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 116
    .restart local v1       #e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Could not start activity for opening URL: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", maybe malformed URL?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 104
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 105
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "Error fetching clickUrl"

    invoke-static {v9, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 71
    .end local v0           #clickUrl:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #eventType:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;
    .end local v5           #jsonData:Lorg/json/JSONObject;
    .restart local v6       #jsonData:Lorg/json/JSONObject;
    :catch_3
    move-exception v1

    move-object v5, v6

    .end local v6           #jsonData:Lorg/json/JSONObject;
    .restart local v5       #jsonData:Lorg/json/JSONObject;
    goto :goto_3

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
