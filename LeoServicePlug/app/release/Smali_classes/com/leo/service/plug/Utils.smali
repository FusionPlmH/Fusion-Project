.class public Lcom/leo/service/plug/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/service/plug/Utils$RestartSystemUITask;,
        Lcom/leo/service/plug/Utils$TypefaceFonts;
    }
.end annotation


# static fields
.field static BlurDrawable:Landroid/graphics/drawable/Drawable;

.field static bitmapWallpaper:Landroid/graphics/Bitmap;

.field static ddd:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ConfirmationDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .registers 7

    .line 223
    new-instance v0, Landroid/widget/TextView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f090001

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 224
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 225
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p2, 0x41900000    # 18.0f

    .line 226
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p2, 0x1e

    const/4 v1, 0x0

    .line 227
    invoke-virtual {v0, v1, p2, v1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 228
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 230
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 231
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 232
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 233
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x3c

    const/16 v2, 0x14

    .line 234
    invoke-virtual {p1, v1, v1, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 235
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object p2, Lcom/leo/service/plug/-$$Lambda$Utils$b_YjBoWorznGdZEJ2Txmu-cwMsg;->INSTANCE:Lcom/leo/service/plug/-$$Lambda$Utils$b_YjBoWorznGdZEJ2Txmu-cwMsg;

    const/high16 v0, 0x1040000

    .line 241
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/leo/service/plug/-$$Lambda$Utils$919ErHz94mA-oiOHQZNigizgYos;

    invoke-direct {p2, p0, p3}, Lcom/leo/service/plug/-$$Lambda$Utils$919ErHz94mA-oiOHQZNigizgYos;-><init>(Landroid/content/Context;I)V

    const p0, 0x104000a

    .line 242
    invoke-virtual {p1, p0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 246
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static LeoGradientDrawable(IIIIIIIIZIIIIIII)Landroid/graphics/drawable/GradientDrawable;
    .registers 23

    .line 299
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez p6, :cond_14

    .line 302
    new-array v5, v5, [I

    aput p0, v5, v4

    aput p1, v5, v3

    aput p2, v5, v2

    goto :goto_26

    :cond_14
    const/4 v6, 0x6

    .line 308
    new-array v6, v6, [I

    aput p0, v6, v4

    aput p1, v6, v3

    aput p2, v6, v2

    aput p3, v6, v5

    const/4 v0, 0x4

    aput p4, v6, v0

    const/4 v0, 0x5

    aput p5, v6, v0

    move-object v5, v6

    :goto_26
    packed-switch p7, :pswitch_data_8a

    goto :goto_69

    .line 347
    :pswitch_2a
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v0, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_69

    .line 343
    :pswitch_32
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v0, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_69

    .line 339
    :pswitch_3a
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v0, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_69

    .line 335
    :pswitch_42
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v0, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_69

    .line 331
    :pswitch_4a
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v0, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_69

    .line 327
    :pswitch_52
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v0, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_69

    .line 323
    :pswitch_5a
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v0, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_69

    .line 319
    :pswitch_62
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v0, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    :goto_69
    move-object p0, v1

    move p1, p8

    move/from16 p2, p9

    move/from16 p3, p10

    move/from16 p4, p11

    move/from16 p5, p12

    move/from16 p6, p13

    .line 352
    invoke-static/range {p0 .. p6}, Lcom/leo/service/plug/Utils;->getLeoGradientStroke(Landroid/graphics/drawable/GradientDrawable;ZIIIII)V

    move/from16 v0, p14

    .line 359
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    move/from16 v0, p13

    int-to-float v0, v0

    .line 360
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    move/from16 v0, p15

    int-to-float v0, v0

    .line 361
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    return-object v1

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5a
        :pswitch_52
        :pswitch_4a
        :pswitch_42
        :pswitch_3a
        :pswitch_32
        :pswitch_2a
    .end packed-switch
.end method

.method public static PowerMenuAction(Landroid/app/Activity;IZ)V
    .registers 6

    packed-switch p1, :pswitch_data_1ac

    goto/16 :goto_1ab

    :pswitch_5
    const/16 p1, 0xe7

    .line 189
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1ab

    :pswitch_f
    const/16 p1, 0xca

    .line 185
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1ab

    :pswitch_19
    const/16 p1, 0xd7

    .line 181
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto/16 :goto_1ab

    :pswitch_20
    const/16 p1, 0xd3

    .line 177
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1ab

    :pswitch_2a
    const/16 p1, 0xcf

    .line 173
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto/16 :goto_1ab

    .line 169
    :pswitch_31
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->screenshot(Landroid/app/Activity;)V

    goto/16 :goto_1ab

    :pswitch_36
    const/16 p1, 0xdb

    .line 165
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto/16 :goto_1ab

    :pswitch_3d
    const/16 p1, 0xd9

    .line 162
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto/16 :goto_1ab

    :pswitch_44
    const/16 p1, 0xda

    .line 158
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto/16 :goto_1ab

    :pswitch_4b
    const/16 p1, 0xd6

    .line 154
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto/16 :goto_1ab

    :pswitch_52
    const/16 p1, 0xd8

    .line 150
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto/16 :goto_1ab

    :pswitch_59
    const/16 p1, 0xe9

    .line 146
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    goto/16 :goto_1ab

    .line 143
    :pswitch_60
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->showSystemUIrestartDialog(Landroid/app/Activity;)V

    goto/16 :goto_1ab

    :pswitch_65
    const/16 p1, 0x7d4

    if-eqz p2, :cond_71

    .line 134
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1ab

    .line 137
    :cond_71
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "tw_leo_recovery"

    invoke-static {p2, v0}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "confi_rmthe_choice_message"

    invoke-static {v1, v2}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "confirm_choice_rec"

    invoke-static {v1, v2}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {p0, p2, v0, p1}, Lcom/leo/service/plug/Utils;->ConfirmationDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto/16 :goto_1ab

    :pswitch_a8
    const/16 p1, 0x7d3

    if-eqz p2, :cond_b4

    .line 122
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1ab

    .line 125
    :cond_b4
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "tw_leo_download"

    invoke-static {p2, v0}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "confi_rmthe_choice_message"

    invoke-static {v1, v2}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "confirm_choice_download"

    invoke-static {v1, v2}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {p0, p2, v0, p1}, Lcom/leo/service/plug/Utils;->ConfirmationDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto/16 :goto_1ab

    :pswitch_eb
    const/16 p1, 0x7d5

    if-eqz p2, :cond_f7

    .line 108
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1ab

    .line 111
    :cond_f7
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "tw_leo_quickboot"

    invoke-static {p2, v0}, Lcom/leo/service/plug/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "confi_rmthe_choice_title"

    invoke-static {v1, v2}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "confirm_choice_quickboot"

    invoke-static {v1, v2}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {p0, p2, v0, p1}, Lcom/leo/service/plug/Utils;->ConfirmationDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto/16 :goto_1ab

    :pswitch_12e
    const/16 p1, 0x7d2

    if-eqz p2, :cond_139

    .line 96
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1ab

    :cond_139
    const-string p2, "android"

    const-string v0, "tw_ic_do_restart"

    .line 99
    invoke-static {p2, v0}, Lcom/leo/service/plug/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "confi_rmthe_choice_title"

    invoke-static {v1, v2}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "confirm_choice_restart"

    invoke-static {v1, v2}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {p0, p2, v0, p1}, Lcom/leo/service/plug/Utils;->ConfirmationDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto :goto_1ab

    :pswitch_16d
    const/16 p1, 0x7d6

    if-eqz p2, :cond_178

    .line 85
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1ab

    :cond_178
    const-string p2, "android"

    const-string v0, "tw_ic_do_poweroff"

    .line 88
    invoke-static {p2, v0}, Lcom/leo/service/plug/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "confi_rmthe_choice_title"

    invoke-static {v1, v2}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "confirm_choice_shutdown"

    invoke-static {v1, v2}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {p0, p2, v0, p1}, Lcom/leo/service/plug/Utils;->ConfirmationDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    :goto_1ab
    return-void

    :pswitch_data_1ac
    .packed-switch 0x0
        :pswitch_16d
        :pswitch_12e
        :pswitch_eb
        :pswitch_a8
        :pswitch_65
        :pswitch_60
        :pswitch_59
        :pswitch_52
        :pswitch_4b
        :pswitch_44
        :pswitch_3d
        :pswitch_36
        :pswitch_31
        :pswitch_2a
        :pswitch_20
        :pswitch_19
        :pswitch_f
        :pswitch_5
    .end packed-switch
.end method

.method public static T(Landroid/content/Context;)V
    .registers 3

    const-string v0, "no_ttf"

    .line 670
    invoke-static {p0, v0}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static collapseStatusBar(Landroid/content/Context;)V
    .registers 5

    const-string v0, "statusbar"

    .line 694
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_9

    return-void

    :cond_9
    :try_start_9
    const-string v0, "android.app.StatusBarManager"

    .line 698
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 699
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-gt v1, v2, :cond_1f

    const-string v1, "collapse"

    .line 702
    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_27

    :cond_1f
    const-string v1, "collapsePanels"

    .line 704
    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_27
    const/4 v1, 0x1

    .line 706
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 707
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p0

    .line 709
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_35
    return-void
.end method

.method public static getLeoBasicColor(ZIIIIII)Landroid/graphics/drawable/GradientDrawable;
    .registers 8

    .line 271
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 277
    invoke-virtual {v0, p6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-eqz p0, :cond_13

    int-to-float p0, p2

    int-to-float p2, p3

    .line 280
    invoke-virtual {v0, p1, p4, p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    int-to-float p0, p5

    .line 281
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_13
    return-object v0
.end method

.method public static getLeoBlurWallpaper(Landroid/content/Context;Ljava/lang/String;IIIZI)Landroid/graphics/drawable/Drawable;
    .registers 8

    if-eqz p1, :cond_3c

    .line 382
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/leo/service/plug/Utils;->bitmapWallpaper:Landroid/graphics/Bitmap;

    .line 386
    invoke-static {p0}, Lcom/leo/service/plug/LeoGlobalBlur;->with(Landroid/content/Context;)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object p1

    sget-object v0, Lcom/leo/service/plug/Utils;->bitmapWallpaper:Landroid/graphics/Bitmap;

    .line 387
    invoke-virtual {p1, v0}, Lcom/leo/service/plug/LeoGlobalBlur;->bitmap(Landroid/graphics/Bitmap;)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object p1

    .line 388
    invoke-virtual {p1, p2}, Lcom/leo/service/plug/LeoGlobalBlur;->radius(I)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object p1

    const/16 p2, 0x8

    .line 389
    invoke-virtual {p1, p2}, Lcom/leo/service/plug/LeoGlobalBlur;->scale(I)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object p1

    .line 390
    invoke-virtual {p1}, Lcom/leo/service/plug/LeoGlobalBlur;->blur()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 391
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object p2, Lcom/leo/service/plug/Utils;->BlurDrawable:Landroid/graphics/drawable/Drawable;

    .line 394
    :cond_3c
    sget-object p0, Lcom/leo/service/plug/Utils;->BlurDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p3, p4}, Lcom/leo/service/plug/Utils;->getLeoWallpaperColor(Landroid/graphics/drawable/Drawable;II)V

    .line 395
    sget-object p0, Lcom/leo/service/plug/Utils;->BlurDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p5, p6}, Lcom/leo/service/plug/Utils;->getLeoWallpaperAlpha(Landroid/graphics/drawable/Drawable;ZI)V

    .line 396
    sget-object p0, Lcom/leo/service/plug/Utils;->BlurDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static getLeoCustomString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 403
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_13

    .line 406
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "Leo ROM"

    goto :goto_13

    :cond_12
    move-object p0, v0

    :goto_13
    return-object p0
.end method

.method public static getLeoGradientStroke(Landroid/graphics/drawable/GradientDrawable;ZIIIII)V
    .registers 7

    if-eqz p1, :cond_b

    int-to-float p1, p3

    int-to-float p3, p4

    .line 266
    invoke-virtual {p0, p2, p5, p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    int-to-float p1, p6

    .line 267
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_b
    return-void
.end method

.method public static getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 3

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLeoString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLeoUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 1

    .line 411
    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getLeoWallpaper(Landroid/content/Context;Ljava/lang/String;IIZI)Landroid/graphics/drawable/Drawable;
    .registers 7

    if-eqz p1, :cond_2c

    .line 369
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object p1, Lcom/leo/service/plug/Utils;->ddd:Landroid/graphics/drawable/Drawable;

    .line 373
    sget-object p0, Lcom/leo/service/plug/Utils;->ddd:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p2, p3}, Lcom/leo/service/plug/Utils;->getLeoWallpaperColor(Landroid/graphics/drawable/Drawable;II)V

    .line 374
    sget-object p0, Lcom/leo/service/plug/Utils;->ddd:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p4, p5}, Lcom/leo/service/plug/Utils;->getLeoWallpaperAlpha(Landroid/graphics/drawable/Drawable;ZI)V

    .line 377
    :cond_2c
    sget-object p0, Lcom/leo/service/plug/Utils;->ddd:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static getLeoWallpaperAlpha(Landroid/graphics/drawable/Drawable;ZI)V
    .registers 3

    if-eqz p1, :cond_5

    .line 292
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_5
    return-void
.end method

.method public static getLeoWallpaperColor(Landroid/graphics/drawable/Drawable;II)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 287
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_8
    return-void
.end method

.method public static getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const-string v0, "com.leo.framework"

    const/4 v1, 0x3

    .line 470
    :try_start_3
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_7} :catch_8

    goto :goto_d

    :catch_8
    move-exception p0

    .line 472
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    .line 474
    :goto_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/String;

    const-string v3, "YXJyYXk="

    invoke-static {v3}, Lcom/leo/service/plug/Utils;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$ConfirmationDialog$0(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 241
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$ConfirmationDialog$1(Landroid/content/Context;ILandroid/content/DialogInterface;I)V
    .registers 4

    .line 243
    invoke-static {p0, p1}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    .line 244
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static rt100foleo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 463
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static screenshot(Landroid/app/Activity;)V
    .registers 4

    .line 196
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f090001

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    invoke-static {}, Lcom/leo/service/plug/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "screenshot_title"

    invoke-static {v1, v2}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "screenshot_style_values"

    .line 198
    invoke-static {v1}, Lcom/leo/service/plug/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/leo/service/plug/Utils$1;

    invoke-direct {v2, p0}, Lcom/leo/service/plug/Utils$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 218
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static setAudioMode(Landroid/content/Context;)V
    .registers 2

    const-string v0, "audio"

    .line 673
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 674
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    return-void

    :pswitch_10
    const/4 v0, 0x1

    .line 684
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void

    :pswitch_15
    const/4 v0, 0x0

    .line 680
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void

    :pswitch_1a
    const/4 v0, 0x2

    .line 676
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_15
        :pswitch_10
    .end packed-switch
.end method

.method public static setLeoFonts(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 10

    .line 478
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Zm9udF9zdHlsZQ=="

    .line 479
    invoke-static {v1}, Lcom/leo/service/plug/Utils;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/leo/service/plug/Utils;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_3ce

    .line 485
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 656
    :pswitch_1e
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 658
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    .line 660
    :cond_53
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 661
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->T(Landroid/content/Context;)V

    goto/16 :goto_334

    .line 647
    :pswitch_5c
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_91

    .line 649
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    .line 651
    :cond_91
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 652
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->T(Landroid/content/Context;)V

    goto/16 :goto_334

    .line 638
    :pswitch_9a
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 640
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    .line 642
    :cond_cf
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 643
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->T(Landroid/content/Context;)V

    goto/16 :goto_334

    .line 629
    :pswitch_d8
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_10d

    .line 631
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    .line 633
    :cond_10d
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 634
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->T(Landroid/content/Context;)V

    goto/16 :goto_334

    .line 620
    :pswitch_116
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_14b

    .line 622
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    .line 624
    :cond_14b
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 625
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->T(Landroid/content/Context;)V

    goto/16 :goto_334

    .line 611
    :pswitch_154
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_188

    .line 613
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    .line 615
    :cond_188
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 616
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->T(Landroid/content/Context;)V

    goto/16 :goto_334

    .line 602
    :pswitch_191
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1c5

    .line 604
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    .line 606
    :cond_1c5
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 607
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->T(Landroid/content/Context;)V

    goto/16 :goto_334

    .line 593
    :pswitch_1ce
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_202

    .line 595
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    .line 597
    :cond_202
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 598
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->T(Landroid/content/Context;)V

    goto/16 :goto_334

    .line 584
    :pswitch_20b
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_23f

    .line 586
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    .line 588
    :cond_23f
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 589
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->T(Landroid/content/Context;)V

    goto/16 :goto_334

    .line 575
    :pswitch_248
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_27b

    .line 577
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    .line 579
    :cond_27b
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 580
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->T(Landroid/content/Context;)V

    goto/16 :goto_334

    .line 566
    :pswitch_284
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2b7

    .line 568
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    .line 570
    :cond_2b7
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 571
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->T(Landroid/content/Context;)V

    goto :goto_334

    .line 557
    :pswitch_2bf
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2f2

    .line 559
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    .line 561
    :cond_2f2
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 562
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->T(Landroid/content/Context;)V

    goto :goto_334

    .line 548
    :pswitch_2fa
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_32d

    .line 550
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    .line 552
    :cond_32d
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 553
    invoke-static {p0}, Lcom/leo/service/plug/Utils;->T(Landroid/content/Context;)V

    :goto_334
    move-object p0, p1

    goto/16 :goto_3cd

    :pswitch_337
    const-string p0, "sans-serif-black"

    .line 546
    invoke-static {p0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :pswitch_33e
    const-string p0, "sans-serif-black"

    .line 544
    invoke-static {p0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :pswitch_345
    const-string p0, "sans-serif-medium"

    .line 541
    invoke-static {p0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    :pswitch_34d
    const-string p0, "sans-serif-medium"

    .line 538
    invoke-static {p0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    :pswitch_355
    const-string p0, "sans-serif-condensed"

    .line 535
    invoke-static {p0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    :pswitch_35d
    const-string p0, "sans-serif-condensed"

    .line 532
    invoke-static {p0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto/16 :goto_3cd

    :pswitch_365
    const-string p0, "sans-serif-condensed-light"

    .line 529
    invoke-static {p0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3cd

    :pswitch_36c
    const-string p0, "sans-serif-condensed-light"

    .line 526
    invoke-static {p0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3cd

    :pswitch_373
    const-string p0, "sans-serif-condensed"

    .line 523
    invoke-static {p0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3cd

    :pswitch_37a
    const-string p0, "sans-serif-condensed"

    .line 520
    invoke-static {p0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3cd

    :pswitch_381
    const-string p0, "sans-serif-thin"

    .line 517
    invoke-static {p0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3cd

    :pswitch_388
    const-string p0, "sans-serif-thin"

    .line 514
    invoke-static {p0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3cd

    :pswitch_38f
    const-string p0, "sans-serif-light"

    .line 511
    invoke-static {p0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3cd

    :pswitch_396
    const-string p0, "sans-serif-light"

    .line 508
    invoke-static {p0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3cd

    :pswitch_39d
    const-string p0, "sec-roboto-light"

    .line 505
    invoke-static {p0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3cd

    :pswitch_3a4
    const-string p0, "sec-roboto-light"

    .line 502
    invoke-static {p0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3cd

    :pswitch_3ab
    const-string p0, "sec-roboto-light"

    .line 499
    invoke-static {p0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3cd

    :pswitch_3b2
    const-string p0, "sec-roboto-light"

    .line 496
    invoke-static {p0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3cd

    :pswitch_3b9
    const-string p0, "sans-serif"

    .line 493
    invoke-static {p0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3cd

    :pswitch_3c0
    const-string p0, "sans-serif"

    .line 490
    invoke-static {p0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3cd

    :pswitch_3c7
    const-string p0, "sans-serif"

    .line 487
    invoke-static {p0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    :goto_3cd
    return-object p0

    :pswitch_data_3ce
    .packed-switch 0x1
        :pswitch_3c7
        :pswitch_3c0
        :pswitch_3b9
        :pswitch_3b2
        :pswitch_3ab
        :pswitch_3a4
        :pswitch_39d
        :pswitch_396
        :pswitch_38f
        :pswitch_388
        :pswitch_381
        :pswitch_37a
        :pswitch_373
        :pswitch_36c
        :pswitch_365
        :pswitch_35d
        :pswitch_355
        :pswitch_34d
        :pswitch_345
        :pswitch_33e
        :pswitch_337
        :pswitch_2fa
        :pswitch_2bf
        :pswitch_284
        :pswitch_248
        :pswitch_20b
        :pswitch_1ce
        :pswitch_191
        :pswitch_154
        :pswitch_116
        :pswitch_d8
        :pswitch_9a
        :pswitch_5c
        :pswitch_1e
    .end packed-switch
.end method

.method public static setLeoNavKeypressAction(Landroid/content/Context;I)V
    .registers 4

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.leo.global.action"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "leo_action"

    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static showSystemUIrestartDialog(Landroid/app/Activity;)V
    .registers 6

    .line 416
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confi_rmthe_choice_message_ui"

    invoke-static {p0, v2}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/service/plug/Resource;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-static {v2}, Lcom/leo/service/plug/Resource;->appNAME(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    .line 418
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 419
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x1e

    const/4 v2, 0x0

    .line 420
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 421
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 422
    sget-object v2, Lcom/leo/service/plug/Resource;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-static {v2}, Lcom/leo/service/plug/Resource;->appICON(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x3f4ccccd    # 0.8f

    .line 423
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 424
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 425
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 426
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x3c

    const/16 v4, 0x14

    .line 427
    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 428
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 431
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 432
    new-instance v1, Lcom/leo/service/plug/Utils$2;

    invoke-direct {v1, p0}, Lcom/leo/service/plug/Utils$2;-><init>(Landroid/app/Activity;)V

    const p0, 0x104000a

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    const/4 v1, 0x0

    .line 438
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 439
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static showrestartDialog(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 715
    new-instance v0, Lcom/leo/service/plug/Utils$3;

    invoke-direct {v0, p0, p1, p0}, Lcom/leo/service/plug/Utils$3;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 745
    new-array p1, p1, [Landroid/content/Context;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-virtual {v0, p1}, Lcom/leo/service/plug/Utils$RestartSystemUITask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
