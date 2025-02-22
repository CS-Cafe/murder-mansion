GDPC                                                                                  res://Assets/icon.png    Q      �       ��x0z�*I����EV   res://Assets/icon.png.import�      �      �bs�rܡ�^r�X �˸   res://Scenes/DemoScene.tscn `      �      ѕgfΰ�����h�2    res://Scenes/PressurePlate.tscn P      /      ��� /��_"-�g(   res://Scenes/RigidBody.tscn �      4      ��+_h���n�c�    res://Scenes/RigidBodyCube.tscn �      3      �lG#Z���H�a�D$   res://Scenes/RigidBodyTriangle.tscn        �      �Eo7V ڜ!`����   res://Scenes/fps_player.tscn�      '      a�E1����c�:��^,   res://Scenes/object_floating_lightcube.tscn �*      �      M���j��C��c�L$   res://Scripts/PressurePlate.gd.remap�P      0       M(��s����;�1��n    res://Scripts/PressurePlate.gdc P,      �      �fߔ��a����c�    res://Scripts/RigidBody.gd.remap�P      ,       HU�x��#�}#�3��x   res://Scripts/RigidBody.gdc  .      �      tZ�D����<�8�֫6$   res://Scripts/fps_player.gd.remap   �P      -       s=��]���v�p�'�%   res://Scripts/fps_player.gdc�/      �      }�-� ��@Q["��8   res://Shaders_and_Materials/plain_white_material.tres   �N      :       �"D��^�֠�ޱ@   res://Shaders_and_Materials/plain_white_material_outline.tres   �N            �������-�g8�>��   res://default_env.tres  �O      �       um�`�N��<*ỳ�8   res://project.binary�Q            O>�T�^����(*��[remap]

importer="texture"
type="StreamTexture"
valid=false

[deps]

source_file="res://Assets/icon.png"
[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
   [gd_scene load_steps=10 format=2]

[ext_resource path="res://Scenes/fps_player.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scenes/object_floating_lightcube.tscn" type="PackedScene" id=2]
[ext_resource path="res://Scenes/RigidBody.tscn" type="PackedScene" id=3]
[ext_resource path="res://Scenes/PressurePlate.tscn" type="PackedScene" id=4]
[ext_resource path="res://Scenes/RigidBodyCube.tscn" type="PackedScene" id=5]
[ext_resource path="res://Scenes/RigidBodyTriangle.tscn" type="PackedScene" id=6]

[sub_resource type="BoxShape" id=1]
extents = Vector3( 5, 1, 5 )

[sub_resource type="ProceduralSky" id=2]
sky_top_color = Color( 0.0235294, 0.0235294, 0.0235294, 1 )
sky_horizon_color = Color( 0.247059, 0.619608, 0.211765, 1 )
sky_curve = 0.302722
ground_bottom_color = Color( 0, 0, 0, 1 )
ground_horizon_color = Color( 0.12549, 1, 0, 1 )
sun_energy = 2.0

[sub_resource type="Environment" id=3]
background_mode = 2
background_sky = SubResource( 2 )
ambient_light_energy = 0.0
fog_color = Color( 0, 0, 0, 1 )
fog_sun_color = Color( 0, 0, 0, 1 )
fog_depth_enabled = false
fog_depth_curve = 0.0346741
fog_transmit_curve = 0.0334929

[node name="DemoScene" type="Spatial"]

[node name="StaticBody" type="StaticBody" parent="."]
transform = Transform( 10, 0, 0, 0, 1, 0, 0, 0, 10, 0, 0, 0 )

[node name="CollisionShape" type="CollisionShape" parent="StaticBody"]
shape = SubResource( 1 )

[node name="CSGBox" type="CSGBox" parent="StaticBody"]
width = 10.0
depth = 10.0

[node name="fps_player" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 1.80902, 9.72751, 1.60423 )
OBJECT_THROW_FORCE = 10
OBJECT_GRAB_DISTANCE = 2

[node name="WorldEnvironment" type="WorldEnvironment" parent="."]
environment = SubResource( 3 )

[node name="object_floating_lightcube" parent="." instance=ExtResource( 2 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 2.88282, 29.4316 )

[node name="RigidBody" parent="." instance=ExtResource( 3 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 20, 14, 10 )
mass = 1.0

[node name="PressurePlate" parent="." instance=ExtResource( 4 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 24.225, 1, 22.716 )

[node name="PressurePlate3" parent="." instance=ExtResource( 4 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 20, 1, 22.716 )

[node name="PressurePlate4" parent="." instance=ExtResource( 4 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 15, 1, 22.716 )

[node name="PressurePlate2" parent="." instance=ExtResource( 4 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 30, 1, 22.716 )

[node name="RichTextLabel" type="RichTextLabel" parent="."]
margin_left = 27.0
margin_top = 28.0
margin_right = 616.0
margin_bottom = 86.0
text = "WASD to Move
SPACE to Jump
R_MOUSE to Pick Up/Throw Highlighted Objects
ESC to Free Cursor/Lock Cursor"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="SpotLight" type="SpotLight" parent="."]
transform = Transform( 0.750676, 2.88788e-08, -0.66067, 0.66067, -3.28131e-08, 0.750676, 0, -1, -4.37114e-08, -76.4847, 79.8952, 0 )
light_color = Color( 0.486275, 0.47451, 0.47451, 1 )
shadow_enabled = true
spot_range = 162.3
spot_attenuation = 0.901251
spot_angle = 41.1
spot_angle_attenuation = 5.27802

[node name="RigidBody2" parent="." instance=ExtResource( 5 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 5, 0 )
mass = 2.0

[node name="RigidBody3" parent="." instance=ExtResource( 6 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -16.2704, 13.3313, -7.13952 )
mass = 1.5
weightOfObject = 0.25
               [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/PressurePlate.gd" type="Script" id=1]

[sub_resource type="BoxShape" id=1]
extents = Vector3( 1, 0.114244, 1 )

[node name="PressurePlate" type="Area"]
script = ExtResource( 1 )

[node name="CSGBox" type="CSGBox" parent="."]
height = 0.132412

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.0893278, 0 )
shape = SubResource( 1 )

[connection signal="body_entered" from="." to="." method="_on_PressurePlate_body_entered"]
 [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scripts/RigidBody.gd" type="Script" id=1]

[sub_resource type="PhysicsMaterial" id=1]
rough = true
bounce = 0.1

[sub_resource type="SphereShape" id=2]

[node name="RigidBody" type="RigidBody"]
mass = 600.0
physics_material_override = SubResource( 1 )
script = ExtResource( 1 )

[node name="CSGSphere" type="CSGSphere" parent="."]
radial_segments = 32
rings = 32

[node name="CollisionShape" type="CollisionShape" parent="."]
shape = SubResource( 2 )

[node name="OmniLight" type="OmniLight" parent="."]
            [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scripts/RigidBody.gd" type="Script" id=1]

[sub_resource type="PhysicsMaterial" id=1]
rough = true
bounce = 0.1

[sub_resource type="BoxShape" id=2]

[node name="RigidBody" type="RigidBody"]
mass = 600.0
physics_material_override = SubResource( 1 )
linear_damp = 1.0
angular_damp = 1.0
script = ExtResource( 1 )

[node name="CSGSphere" type="CSGBox" parent="."]

[node name="CollisionShape" type="CollisionShape" parent="."]
shape = SubResource( 2 )

[node name="OmniLight" type="OmniLight" parent="."]
             [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/RigidBody.gd" type="Script" id=1]

[sub_resource type="PhysicsMaterial" id=1]
rough = true
bounce = 0.1

[node name="RigidBody" type="RigidBody"]
physics_material_override = SubResource( 1 )
script = ExtResource( 1 )

[node name="CSGSphere" type="CSGPolygon" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.25 )
polygon = PoolVector2Array( -0.5, -0.5, 0.5, 0.5, 0.5, -0.5 )

[node name="CollisionShape" type="CollisionPolygon" parent="."]
depth = 0.5
polygon = PoolVector2Array( -0.5, -0.5, 0.5, 0.5, 0.5, -0.5 )

[node name="OmniLight" type="OmniLight" parent="."]
[gd_scene load_steps=6 format=2]

[ext_resource path="res://Scripts/fps_player.gd" type="Script" id=1]

[sub_resource type="CapsuleShape" id=1]

[sub_resource type="CapsuleShape" id=2]
radius = 1.05

[sub_resource type="BoxShape" id=3]
extents = Vector3( 1, 0.317707, 1 )

[sub_resource type="BoxShape" id=4]

[node name="fps_player" type="KinematicBody"]
script = ExtResource( 1 )

[node name="marker" type="CSGPolygon" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.79816, 0 )
polygon = PoolVector2Array( 0.5, 0.5, 0, 0, 0, 1 )
mode = 1
spin_degrees = 360.0
spin_sides = 8

[node name="collision_body" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0 )
shape = SubResource( 1 )

[node name="damage_area" type="Area" parent="."]

[node name="area_collision_body" type="CollisionShape" parent="damage_area"]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0 )
shape = SubResource( 2 )

[node name="collision_feet" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -1.07482, 0 )
shape = SubResource( 3 )

[node name="rotation_helper" type="Spatial" parent="."]

[node name="player_model" type="Spatial" parent="rotation_helper"]

[node name="player_camera" type="Camera" parent="rotation_helper"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.890245, 0 )

[node name="gun_fire_points" type="Spatial" parent="rotation_helper"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.89, -2 )

[node name="grab_objects" type="Spatial" parent="rotation_helper/gun_fire_points"]

[node name="Area" type="Area" parent="rotation_helper/gun_fire_points/grab_objects"]

[node name="CollisionShape" type="CollisionShape" parent="rotation_helper/gun_fire_points/grab_objects/Area"]
shape = SubResource( 4 )

[node name="gun_aim_points" type="Spatial" parent="rotation_helper"]

[node name="player_flashlight" type="SpotLight" parent="rotation_helper"]
shadow_enabled = true
spot_range = 11.5324
spot_angle = 49.6594

[node name="grenade_toss_position" type="Spatial" parent="rotation_helper"]

[node name="player_hud" type="Control" parent="."]
margin_right = 40.0
margin_bottom = 40.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Reticle" type="Control" parent="player_hud"]
margin_right = 40.0
margin_bottom = 40.0

[node name="ColorRect2" type="ColorRect" parent="player_hud/Reticle"]
margin_left = -2.0
margin_top = -2.0
margin_right = 22.0
margin_bottom = 22.0
color = Color( 0, 0, 0, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ColorRect" type="ColorRect" parent="player_hud/Reticle"]
margin_right = 20.0
margin_bottom = 20.0
__meta__ = {
"_edit_use_anchors_": false
}

[connection signal="body_entered" from="damage_area" to="." method="_on_damage_area_body_entered"]
[connection signal="body_entered" from="rotation_helper/gun_fire_points/grab_objects/Area" to="." method="_on_Area_body_entered"]
[connection signal="body_exited" from="rotation_helper/gun_fire_points/grab_objects/Area" to="." method="_on_Area_body_exited"]
         [gd_scene load_steps=2 format=2]

[sub_resource type="BoxShape" id=1]
extents = Vector3( 0.5, 0.5, 0.5 )

[node name="object_floating_lightcube" type="StaticBody"]

[node name="CollisionShape" type="CollisionShape" parent="."]
shape = SubResource( 1 )

[node name="CSGBox" type="CSGBox" parent="."]
width = 1.0
height = 1.0
depth = 1.0

[node name="OmniLight" type="OmniLight" parent="CSGBox"]
      GDSC            :      ���׶���   �����Ӷ�   �����϶�    �����������������������������Ҷ�   ���϶���   ��������϶��   ������������϶��   ���������Ӷ�             PressurePlate                                                    "   	   '   
   ,      1      5      6      7      8      3Y;�  Y0�  PQV�  -YYY0�  P�  QV�  &�  4�  �  4�  V�  �?  P�  Q�  �  �  �  �?  P�  Q�  �  PQ�  �  �  Y`              GDSC            3      ��������϶��   �������������¶�   �����ض�   �����Ӷ�   �����϶�   ���������������Ŷ���   ����׶��     �?                                       	      
                           	      
         &      *      +      /      0      1      3YY8;�  YY;�  �  Y8;�  �  YY0�  PQV�  -�  Y0�  P�  QV�  &�  V�  �  �  �  �  �  Y`           GDSC   m   "          ������������϶��   ��������   ��������   ���������������   ��������򶶶   ��ڶ   ��Ķ   ����������   ������϶   �����������Ѷ���   ���������������򶶶�   ����������������   ���������¶�   �����׶�   ������Ӷ   �������������¶�   ������������������   �������������������󶶶�   �����������������������󶶶�   ���������������ض���   �������������������������ض�   ��������������Ķ   ����������������ﶶ�   ������Ӷ   �����϶�   ������������׶��   ����������������¶��   ���������Ҷ�   ������Ӷ   �����������ض���   �����������¶���   ���Ӷ���   ��������¶��   ��������������Ŷ   �����������Ŷ���   ���׶���   �������������Ӷ�   ����������ض   ��������Ӷ��   ����������Ŷ   ����¶��   �������������Ӷ�   �������������������   ���������������Ŷ���   ����׶��   �������������Ŷ�   ���������������¶���   �����¶�   ����¶��   ��������������������ض��   �������������Ӷ�   �������ζ���   �������Ӷ���   ϶��   �������϶���   ζ��   ���������¶�   ���������������Ŷ���   ����������Ķ   ��������۶��   �������������������۶���   ��������������������Ķ��   ����������������Ҷ��   ���������Ҷ�   ����Ŷ��   ̶��   ���������������������Ҷ�   ������������������   ������Ӷ   ����Ӷ��   ��������Ҷ��   �����������������Ӷ�   ��������������ض   �������۶���   �����������������ض�   �����ٶ�   �����������������ڶ�   ���������¶�   ������������϶��   ����϶��   ��������϶��   ���Ӷ���   ������������   ��������������Ķ   �������������ݶ�   ����Ӷ��   ����������Ӷ   ����������   ������������Ӷ��   ���������������۶���   �������������¶�   �����ض�   �����ض�   ���ڶ���   �����¶�   ����ڶ��   ��¶   �����������������Ӷ�   �������������Ӷ�   ��������������������Ҷ��   ���϶���   ��������󶶶   ���Ӷ���   �������Ӷ���   ����������������Ӷ��   ����Ķ��   �������������������Ҷ���    ���������������������������Ҷ���   �����Ӷ�     �@         (            	     ������8@                      F          x            
     �������?                               movement_forward      movement_backward         movement_left         movement_right        movement_jump      	   ui_cancel         player_flashlight         movement_sprint       fire_grenade      collider      ?         	   CSGSphere      =   res://Shaders_and_Materials/plain_white_material_outline.tres      5   res://Shaders_and_Materials/plain_white_material.tres                                                    	   	      
                     $      +      ,      -      2      8      9      :      ?      D      I      J      K      N      O      P      S      Y      Z       [   !   `   "   f   #   l   $   r   %   u   &   x   '   y   (   z   )   }   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =   �   >   �   ?   �   @   �   A   �   B   �   C   �   D   �   E   �   F   �   G   �   H   �   I   	  J     K     L     M     N     O     P     Q   $  R   )  S   *  T   +  U   2  V   8  W   B  X   G  Y   V  Z   W  [   \  \   k  ]   l  ^   m  _   t  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x     y     z     {     |   %  }   &  ~   '     -  �   6  �   <  �   =  �   >  �   G  �   S  �   \  �   _  �   h  �   i  �   j  �   s  �   t  �   |  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �      �     �   
  �     �     �   "  �   (  �   .  �   /  �   9  �   @  �   A  �   D  �   L  �   Z  �   g  �   o  �   u  �   {  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �     �     �   +  �   3  �   ;  �   @  �   C  �   M  �   P  �   S  �   X  �   Z  �   [  �   \  �   ]  �   d  �   e  �   k  �   w  �   |  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �     �    �    �    �    �    �    �    �      	    
              3YYYYYYYY:�  Y:�  �  Y:�  �  Y:�  �  Y;�  �  PQY;�  �  PQYYY:�  �  Y:�  �  YYY;�	  �  Y;�
  �  Y;�  �  YYY;�  YYY;�  Y8;�  �	  YYY;�  �
  Y8;�  �  Y8;�  �  Y8;�  �  Y;�  Y;�  YYY;�  Y8;�  �  YYY;�  YY0�  PQV�  �  �  W�  �  �  �  �  �  W�  �  �  �  �  W�  �  �  �  �  �  W�  �  �  �  T�  P�  PQT�  �  Q�  �  �  W�  �  �   �  �  �  �  W�  �!  �  �  W�  �!  �"  �#  �$  �  �  &�  V�  �  �  T�%  �  P�  R�  R�  �  �  Q�  �  T�&  PQT�'  P�  �  P�  R�  R�  �  Q�  Q�  �  �  �(  T�)  P�(  T�*  QYYY0�+  P�,  QV�  �-  P�,  Q�  �.  P�,  QYYY0�/  P�0  QV�  &�0  4�1  �(  T�2  PQ�(  T�*  V�  �  T�3  P�  �+  P�0  T�4  T�5  �  �  QQ�  �  T�6  P�  �+  P�0  T�4  T�7  �  �  QQ�  �  �  ;�8  �  T�9  �  �8  T�7  �5  P�8  T�7  R�  R�  Q�  �  �  T�9  �8  YYY0�-  P�,  QV�  �  &�:  PQV�  �  �  PQY�  �  ;�;  �  T�<  PQ�  �  �  ;�=  �  PQ�  �  �  &�(  T�>  P�  Q�:  PQV�  �=  T�5  �  �  &�(  T�>  P�  Q�:  PQV�  �=  T�5  �  �  &�(  T�>  P�  Q�:  PQV�  �=  T�7  �  �  &�(  T�>  P�  Q�:  PQV�  �=  T�7  �  �  �=  �=  T�?  PQ�  �  �  �;  T�@  T�A  �=  T�5  �  �  �;  T�@  T�7  �=  T�7  �  �  �  &�:  PQV�  &�(  T�B  P�  QV�  �  T�5  �  �  �  �  &�(  T�B  P�  QV�  &�(  T�2  PQ�(  T�C  V�  �(  T�)  P�(  T�*  Q�  (V�  �(  T�)  P�(  T�C  Q�  �  �  &�(  T�B  P�  QV�  �  &�  T�D  �  V�  �  T�D  �  �  (V�  �  T�D  �  �  �  �  &�(  T�>  P�  QV�  �	  �  �  (V�  �	  �  �  �  �  &�(  T�B  P�  QV�  �  &�  �
  V�  ;�E  �F  PQT�G  �  ;�H  �  PQT�  �  �  ;�I  �  T�J  P�H  Q�  ;�K  �I  �  T�L  P�H  Q�  �  �  ;�M  �E  T�N  P�  �I  R�  �K  R�  L�  R�  W�  �!  �"  �#  �  M�  Q�  �  &�M  T�O  PQV�  &�M  L�  M4�P  V�  �  �M  L�  M�  �  T�Q  �P  T�R  �  �  T�S  �  �  �  T�T  �  �  �  �  T�U  �  T�U  �  �  �  T�V  P�  Q�  �  (V�  �  T�Q  �P  T�W  �  �  T�X  P�  P�  R�  R�  QR�  �  T�Y  T�@  T�A  T�?  PQ�  �  �  T�Z  Q�  �  T�S  �  �  �  T�T  �  �  �  T�[  �  �  �  �  T�U  �  T�U  �  �  �  T�V  P�  Q�  �  �
  �  �  &�  �
  V�  �  T�Y  T�\  �  T�Y  T�\  P�  T�Y  T�@  T�A  T�?  PQ�  QYYY0�.  P�,  QV�  �  T�5  �  �  �  �  T�?  PQ�  �  T�5  �,  �  �  ;�]  �  �  �]  T�5  �  �  ;�^  �  �  �  &�	  V�  �^  �
  �  (V�  �^  �  �  ;�_  �  &�  T�`  P�]  Q�  V�  &�	  V�  �_  �  �  (V�  �_  �  �  (V�  �_  �  �  �]  �]  T�a  P�^  R�_  �,  Q�  �  T�7  �]  T�7  �  �  T�A  �]  T�A  �  �  �b  P�  �  R�  �  P�  R�  R�  QR�  �  R�  �  R�  �+  P�  Q�  QYYYY0�c  P�d  QV�  �  &�d  4�P  V�  ;�e  V�f  �d  T�g  P�  Q�  �e  T�h  �L  P�   Q�  �  �?  P�e  Q�  �  T�i  �  P�  R�  R�  R�  Q�  -YYY0�j  P�d  QV�  �  &�d  4�P  V�  ;�e  V�f  �d  T�g  P�  Q�  �e  T�h  �L  P�!  Q�  �  �?  P�e  Q�  �  T�i  �  P�  R�  R�  R�  Q�  -�  -YYY0�k  P�d  QV�  &�d  4�P  �d  T�l  �
  �d  T�[  �  V�  -�  �  T�i  �  P�  R�  R�  R�  Q�  �  �  YY`   [gd_resource type="SpatialMaterial" format=2]

[resource]
      [gd_resource type="SpatialMaterial" load_steps=2 format=2]

[sub_resource type="SpatialMaterial" id=1]
flags_unshaded = true
params_cull_mode = 1
params_grow = true
params_grow_amount = 0.02
albedo_color = Color( 0, 1, 0, 1 )

[resource]
next_pass = SubResource( 1 )
     [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [remap]

path="res://Scripts/PressurePlate.gdc"
[remap]

path="res://Scripts/RigidBody.gdc"
    [remap]

path="res://Scripts/fps_player.gdc"
   version https://git-lfs.github.com/spec/v1
oid sha256:2c160bfdb8d0423b958083202dc7b58d499cbef22f28d2a58626884378ce9b7f
size 3305
               ECFG      application/config/name      	   $GAMENAME      application/run/main_scene$         res://Scenes/DemoScene.tscn    application/config/icon          res://Assets/icon.png      display/window/size/width      �     display/window/size/height      8     global/delta             input/movement_forward`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script         input/movement_backward`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script         input/movement_left`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script         input/movement_right`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script         input/movement_jump`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script         input/player_flashlight`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   F      unicode           echo          script         input/movement_sprint`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/fire_grenade�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres                