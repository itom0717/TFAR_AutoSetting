//---------------------------------------------------------------------------
// Task Force Arrowhead Radio ���g�������l�ݒ� MOD for MENTAIKO ARMA3 SERVER
//                                                           Create ITOM
//---------------------------------------------------------------------------
�{�X�N���v�g�� Task Force Radio �̖������g���������ݒ肷�邽�߂̃X�N���v�g�ł�


�������@
1. @TFAR_AutoSetting �t�H���_�� Arma3�̃C���X�g�[���t�H���_�֓����
2. @TFAR_AutoSetting\userconfig\TFAR_AutoSetting �t�H���_�� Arma3�̃C���X�g�[���t�H���_�� userconfig �t�H���_�֓����

�@�ȉ��̂悤�ɂȂ�
  - Arma 3
     - @TFAR_AutoSetting
       - addons
          - TFAR_AutoSetting.pbo
     - userconfig
       - TFAR_AutoSetting
          - setting.hpp


�T�[�o�[���̏���
�@�E�����������̃f�t�H���g�l�ݒ�
�@�E�p�[�\�i�������̃f�t�H���g�l�ݒ�

�@�@���T�[�o�[���͕K�{�ł͂���܂���B


�N���C�A���g���̏���
�@�E�A�N�V�������j���[�Ɂ@Initialize TFAR Personal Radio�@��ǉ�����
�@�E���j���[�����s�����
�@�@�@1. AN/PRC-152 �������Z�b�g
�@�@�@2. 1Ch ���� 8Ch�܂ł̎��g���������Z�b�g

�@�@���N���C�A���g���͒����������̎��g���͎����Z�b�g���s���܂���B
�@�@���T�[�o�[����MOD���Ȃ��ꍇ�ł��p�[�\�i�������̎����ݒ�͉\�ł��B


userconfig\TFAR_AutoSetting\setting.hpp �Őݒ�ł�����g����ύX�\�ł��B


��������
�@�@�p�[�\�i�������� AN/PRC-152 �݂̂ł��B(setting.hpp�ŕύX�͉\)
�@�@BLUEFOR(west) �w�c�̂ݑΉ�



�Q�l�T�C�g


Category:Scripting Commands Arma 3
 https://community.bistudio.com/wiki/Category:Scripting_Commands_Arma_3

Task Force Arrowhead Radio
 http://radio.task-force.ru/en/

Task Force Arrowhead Radio Documentation Wiki
 https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki

Task Force Arrowhead Radio API variables with description
 https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki/API:-Variables

Task Force Arrowhead Radio Script API 
 https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki/Script-API



����
�@�{MOD�̑O�g�ł���MissionScript�𓱓����Ă��������� MENTAIKO�I �l
�@���ۂɎg�p���Ă���������MENTAIKO�I�̊F����B
�@���肪�Ƃ��������܂��B

//---------------------------------------------------------------------------
// �C������
// 2014/07/30 Ver. 1.00 �V�K�쐬
// 2014/07/30 Ver. 1.01 pbo�ɂ��݃t�@�C���������Ă����̂ō폜
// 2014/08/02 Ver. 1.02 �����������̃f�t�H���g�l�ݒ�̓T�[�o�[���݂̂ɂ���
// 2014/08/03 Ver. 1.03 ����
// 2014/08/03 Ver. 1.04 ���J�o�[�W����
// 2014/08/04 Ver. 1.05 �T�[�o�[�������C���i�e�X�g���ł̓T�[�o�[���Ŏ��g�������l�ݒ�ł��Ă��� MOD�̏��Ԃ͈�ԍŌ��OK�j
//                      ���{�ꂪ�܂܂�Ă���ƃG���[���o�Ă���悤�Ȃ̂ŁA�R�����g���̂̓��{��i�Q�o�C�g�����j���폜
//                      setting.hpp �̋L�q�~�X�̏C���i�����@�̎�ށj
// 2015/05/30 Ver. 1.06 ���j���[�̃v���C�I���e�B�[��ύX
//                      �ꕔ�C��
//                      MOD�t�H���_�����@@JMGS_TFRAS�@�֕ύX
//---------------------------------------------------------------------------


