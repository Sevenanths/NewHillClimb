.class public interface abstract Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;
.super Ljava/lang/Object;
.source "InterstitialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/InterstitialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BrowserControl"
.end annotation


# virtual methods
.method public abstract canGoBack()Z
.end method

.method public abstract canGoForward()Z
.end method

.method public abstract getPageTitle()Ljava/lang/String;
.end method

.method public abstract getTime()I
.end method

.method public abstract goBack()V
.end method

.method public abstract goForward()V
.end method

.method public abstract launchExternalBrowser()V
.end method

.method public abstract reload()V
.end method
