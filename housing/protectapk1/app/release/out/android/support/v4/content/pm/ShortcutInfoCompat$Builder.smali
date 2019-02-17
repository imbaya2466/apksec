.class public Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/pm/ShortcutInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Landroid/support/v4/content/pm/ShortcutInfoCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;-><init>(Landroid/support/v4/content/pm/ShortcutInfoCompat$1;)V

    iput-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    .line 187
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;
    invoke-static {v0, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$102(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/content/Context;)Landroid/content/Context;

    .line 188
    iget-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$202(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/content/pm/ShortcutInfoCompat;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # getter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$300(Landroid/support/v4/content/pm/ShortcutInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 306
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # getter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;
    invoke-static {v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$600(Landroid/support/v4/content/pm/ShortcutInfoCompat;)[Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # getter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;
    invoke-static {v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$600(Landroid/support/v4/content/pm/ShortcutInfoCompat;)[Landroid/content/Intent;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_20

    .line 309
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    return-object v0

    .line 307
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shortcut much have an intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shortcut much have a non-empty label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActivity(Landroid/content/ComponentName;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;
    invoke-static {v0, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$802(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    return-object p0
.end method

.method public setAlwaysBadged()Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    const/4 v1, 0x1

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z
    invoke-static {v0, v1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$902(Landroid/support/v4/content/pm/ShortcutInfoCompat;Z)Z

    return-object p0
.end method

.method public setDisabledMessage(Ljava/lang/CharSequence;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$502(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIcon(Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;
    invoke-static {v0, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$702(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 0
    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->setIntents([Landroid/content/Intent;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setIntents([Landroid/content/Intent;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1    # [Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;
    invoke-static {v0, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$602(Landroid/support/v4/content/pm/ShortcutInfoCompat;[Landroid/content/Intent;)[Landroid/content/Intent;

    return-object p0
.end method

.method public setLongLabel(Ljava/lang/CharSequence;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$402(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setShortLabel(Ljava/lang/CharSequence;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 0
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroid/support/v4/content/pm/ShortcutInfoCompat;

    # setter for: Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat;->access$302(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method
