-module(erlbz2_tests).

-include_lib("eunit/include/eunit.hrl").

prop_test_() ->
    Opts = [{start_size, 1},
            {max_size, 10000},
            {numtests, 10000}],
    {timeout, 600, fun() ->
                           ?assertEqual([], proper:module(prop_com_decom, Opts))
                   end}.

small_buffer_test() ->
    ?assertEqual(<<66,90,104,57,23,114,69,56,80,144,0,0,0,0>>,
                 erlbz2:compress(<<>>, 9, 30, 1)),
    ?assertEqual(<<>>,
                 erlbz2:decompress(<<66,90,104,57,23,114,69,56,80,144,0,0,0,0>>, 1)).

crash_test() ->
    B = <<"F7DerqP.5El7pp5EBL6omgqSPiKtbLOJMa75PRLvMuFPGUTiB{Zb0C}m6E5greOIMEtOBkGT6RNRPZkzOq.id1S}rV3.UNG25Nv65sj7sgjnmqP4GauCDQ}1BGTO1gn7Cd{6Er8P6fLk1Zd6aaz5EJdMNjN7UmPu5.m4aNP4OM\"uPg0NbSk.oAUvizPnLaFISVLcseDfjIBFPojaZDrsLUBJ90JJTbuPgOtcJUlni1i62EPz8cUPiBEnPEKcdNplialr88K.fm1R5igATd8n,s7},qaSQG8}eZp47Qme9abNsu{ojGGM}}.6L2{E,CDb.ZoJzU}d{5VqD,bU8,.Ska0SGUJMKmtC.mn5qMB}{M8gMo3d4RfzJOk22s683lC{04JN,0Ro9O{rvDE0pEzeMO1,fu4GO4{.ruU4fP\"tR97u}Uk6M}8veZ2qu8EoT}SO6v.AKus2{Nqc}l0tZsz3NZlDTm5.IPkU,02QO8P0L7tiCA.PZoKi,FK.i\"TCB2ZCt1ZCzcqZD6g8F}uRi0ddB3OfZ\"mvL93bIqCu0TDnNGu5\"sS{i01mAj4glZuVpD7GPmu7LDQa2DCZ2EapT9EE,N2iv8.cb{BcKombf3ztutT8FZBzvGZClC}u8D7akLMN3lkGrlIJoIalvU\"gelGFtv{e}8vpqLr,9QZZ3o5RSRNFpf\",2bsG}4Rbm{n1iQPrOQE6rRA6R1nAmaE{VlDJCO177d3EoR0{05uRpQcOl}VN9LiSsLOa8kCFIsz1ZUKj.IVqg\"5Q}1A}sqIirf0j9q6L9eG8amspv8qI3r0GojvkL0{sR7K7rJn.Ca2EQfeoEP{NnMIaADCups9OmSZFp8e9aMt\"r2F7lrFuNTe66upnBDvKQ{Qeu6QpS8dE,jfiZAluazL.iLB.2LOJmPMCFdB6ZRaRl7sruC3acVVVKS3,}revUJEdooiilF1Ga96GM}r.eoRvF9TZUQVEFkgf7UKnc.3B5Z4uZsaltlGLq1QJO2m3Gkpz3,JcPvjdau6.C4BFiN7oLkTKfrOik7I9Pfk4FfqjZ1L3Q{a}ZJ9VNAM6Iigdc9}VS1QAqkegcE8INGInutFkbgvDgJ}77p9ZNgQUf,C6r6uQub4MR{u{2Et8v{K.8gvstA73K7LRitKioBe,UCtO5Si5z5QeAlCT7noo7}F9KN4NJIK,zmPnqQqQtficfqm2}mf5r\"}}VJnQIJpuD8Jk,u\"}jZ9iQPUkoGgFSStQnDP6Q79qm5O298ZAZMg8Rs.QSd7k{RSGlAaIzlqC.otQnKsgIoEdS\"TgpRD\"TTr0RdIjCn{,GNRE{zQLFLdTATZu90um0gzCaj5NFfJ}IdOVQkVBzdRr{rVes4VIQu3pTeODF4sE10vqR4qSELuSV0BCRnV.m7sUaKI1P.0z9b1.cuRqr,VNqQ,1U2iUIaSzF}ZKI91iq5ZBu7B.4P4i7Gaz75Uqvj7f4EVt5E11grBLe9MT0}k2LLjCNGUdCB5{LodGLdb7FK08aJQFrMnTKtonTUqLZk9tOj,1QLtZfjmio4lL7IgZO9,8491S{Va\"rK3}6Anb6QqrtULbnSpcdM5gvmc2Q2qJ9e\"fc.2G}PmpfGaQB9MlELkz0S3A9TDdsUkOEnVeZcNlfzjfKp4eLuIFr2b4j9cJkT2BuaZL42lI6l3dzNS6sfmNa\"6i1SMPgOC,98VGl\"0bElV\"bT8\"CcPm6CD2K7O4.rbjbMP\"V1C9DGess57R6v8mIT54EVfvKnF6SlSTjnuQtQfadiPEc2mkflSAK}UPb4N}scc\"MqDJBGIN6OuNpKcBtKapLsgl,I9nPOsel2d8DNUffPoE2KUbT8gPMVpi.{QTN66d}bjCid2k\"NsBEPJ.U3\"vnicfioVSBrJzdgVZrs0fBmiq8v,clLmQBpMD1g4GEVUa{7fL6sTnbV.M\"6Zu0SIEQTdPC9gRZMN}7D},LTfFqPcdFQ{gv1j3LQb5iz01O3umk}1v.jt6isOtu8GIVRrQAM\"cTG}3C\"Qt8L.vA{DFD0{UL2mtKgT,9SRbJznzR2lqvDJeJB4Q,}AFiFGTaDzs5vBVktD9C0\"Btq1BOCM4}t\"z,vKFf0pdB16ssSMT6iCIKnBB1,\"BGcgfn9FIJVuGKL35e66}dtJfgksz023Koes}5,Ckfj5NpV2EgPgTKmINravGJaJQVg.O3p.EQZDoZF7dzirqPgSzLaFUrTijJZNtqKpd.1pdcPcS{2fJk.8t0rdMSSNRr\"4uJLT2rzte13T4If7Rf2BgDiNSibZ}FJ6PF{Cft4T.bmmSKvpE,NEg}6knPgdKqkm64RQ5AIg4547\"VL7JkDS{6.CV\"SLO.Ecu68MQCQS6auZZ3EzOVR8{bfC.Aal3\"qMkb1d3N62V4GDZNuBJceSFJq9jKmJ{JQIdsGFlOOicIa{nIIFZ.ugVmZE7EbiVq4MBO3Fr{L3,{o\"nPLPp2aMpzrfVlJBqmCn,.\"tPAVrCsvk6CAt.GkiGnFrqM1BC8vl39GKvef.afqTzS39V,7doc{BseC.PTvQcSNoFfC\"RreD7\"gag56Ls4s{poPjnbk7.l{QPg3lm.NMs7qnzbo2m4d.rLeLCkS41u4QQS5dcd\"aUg1js0eZuCGoC8D1QNN\"Ln}domO\"Vt6.BMA}PVPMb}mpPTIiP7aOuGkGAB8{4F.GtkUPV3{U98,JiTU\"t4ncl20BR}JmU3K7b5r7ZOSseJBC4{aSs0iECspObzLaSG72NL{k2G{JfmnMZi2mtUEcrj.kfrcuzJrzspzl3zRCrjz14sgsU3rB0jLaGk7obp{3KD,lPaB86KtE.zLf{vStiSi9kj9vPl}QEqPpFl,s\"m4K{,duveDcdk7EKBMlU5D3TDRtDa.UrgUJ1NDN4tVII8KFg2sJKVJZ29pFE395CdNq2UaRJn8cM8avl2Gk,rn6GO5JJRmkfg0QOTCDEvmi3b1aDmnG90VnnBjsMczPLsS9IsR9df,co7aTBIO2TcmBtup}{vfNK87.JRrFSjRBFA9NULOOjEZL{5q{nNe1r1LI3zProgZEb7Kd8IbDSbu99J8Vt8Lpmpr9D9ig9sJeirpfETg09.l4L5bjDIquOIk\"t1A3dqTKI0{5st7q7jD3OJbGcLDMe4kTUIQDCK3Kbcsl0cVpeBrjOFScT8kPuq2Av0t7FnrDSF9E4ZtiCLGJSoVs1rgQpCVrRCtJ2OvuIII1O5\"cJc049Vn0nqjqtrzcJoGErrkMV8{ILv5ZmIbdRqqKSzE9T4OUgR5Kdl4\".KqRlmRjPTdq7fucj1.qnjKQlsPtpgOn\"99f9Cuj}sLb{\"M.OTNeBPP4NIj1og5FkDpa1OcSOJGfc{B,qlkiugDiZiA0LJVMiSk\"40EA5{ddB,sV3Joob{O{pQTeDK5dINrrgBCzIPm0zTifVIqUB7Jjd8dq.6FOVja0Cr.i44mbE,rQvas{m{P7RRT9BFcV0ecEl9F50qQa,JL1oCDSm,ZKl49QJmJ5vEG8tFfM}pUMuGcjpa74OdJaG53D8pM,o7eZT}dNLo7F5F}bD5zE0lO.i2J99B625}lCGBjiiapU5c0DvLgVF2MigBsll{SFoq4Z}p2A6B8CS,6j9N5fqvVG0cs{l.nVCFv\"aLjEF8}EqjcZIMjCuMpl{EEudASgJtk{uZpE,aVQVROResvTtaKoI9eenKaQISN4DJJ.MZ4kDUzsRdkak,AK9RTfkORl3BfLcqU54aVpjp.tIdIA4anza5SjSDpTVD9M0RLjccmlr7.qpvIddESDFfrqPfp9svCqm3{a69.1pA.Ckv\"RZJl15u1JzEZfBGCe.G,tjSQZBmTDlDr0s8eB4CtLRVmzvgeQOqk7GM6cseKgei0qpVbt{aOCrRf3E6lrcVJks0kBPaBSjbSLc3.8BjGfbDpp}13LNLSkvgsTsKtC{AuiKJ3nJ08UL5JOom50F25Gcj\"zt\"NS0a8ZJ\"1ijCioPDZFSLfCoZmSLN39\"Ms36u6JftRmEGrN\"q{DC}sdo{Zj505fL4O{oj.Ol6F2pZfSrTE1C7QzA}gOE26C3r04D6i.ul}ar8U\"87GQe,GFtv5acUjZZsSnGFND54vpEcME\"vcGab8miM,PuQkVr3krmDU{8d{OVorgBd5{oEvi2UararDu{fzCLND,.Nt6qlSBJ1VuLbSvGKkoJp}.QQFFAUN{\"QgPuK1V,tP6SSNBKV\"MgZT2uNJM3DbtIaiM{tnJrI7p1UQ3Lbg1ZQV45DMFdBSUk1MEuUtsDodVp5rzCV1zmoo5aM3}CgjNAdCZFMK0NE5Kr39FNL7mkGNoCOaOC48As529MsGQc1ApOtApc}Ae7u0a1utTT{E7m0njSs3S7iKF{gD6Q0e12ZU0DfRGMDmvaZiMkTb5e.f8feNm8k}MfpOpt\"DDLb3bJ.a1i1gI}47eJ}zKLaD9,nBlqdN.c7lTi{TLOR}kDTdFrLtOVSmO}G1pGQ4\",QAeFZ\"sk{DdG4bf.bZP8A3etoCzq8nm8}EK8U\"L86cO0cmcvJ4laOt7Zs.sSFodIuP\"CGknaUIbeqP\"O9.0.Zjim22.5i5R4DJI1I{,}jALbrn3zFjbkz}zLbkj9NitF53\"v8a1{\"6bMf41Qqf9oK3kcrMstZeo9to}nk5gMPEsdDaJ8kg8T.\"gA56up\"l2qsPSlqBpvsSAe3QmRcZq1DNvRCJ0{blZC\"RI2gGUVlPEfoocNvf31tIP1El4gIpskTSI1liDlvzstlfaES71Bls7f{}Q29{,}peTK7.m7zOBSKjjdJv,9Ta,EUIzOavnPt,1nQE3K8t29L\"V5Rj3LSez06dN1EFIIVm\"gf}PaDrkQ{tAL3flPZZO9fQQ3a2Cdmqd4lQTJLfBQZrsEruI2EGtSfT25gNTNUR\"jEGkI}CkT\"zgJ,zGcpZNzZ5bNb,guGggbBmt1cNpsCeurUj8G0SVtrDM9q2qjdDBLV{fbDo{cCk\"mztdfiAAmCKzP9kCKqgs3.TUneDNPRAJ6jPaz1kfGpvFg,CqEs7gN5}u4fTLGr}QicJ0jsfTVrlgeeB3P\"z5DQrLk9o,pS0DZc5oURT5nfoUmo{o2mM{nDNZ01oF64TVpP1Pt56nnaI{uzK2IbpPTsjKRoTSF9stiBQRd0qJj1JRVvCJr9LT7TQp3\"kakTK{b6OFUN1ruLL0KFl{rN.Btpo.K2qCBRM493EdU2PeTbo4j5Pn9TbCauV,A}l0rtp1G}vM}\"rO,KT">>,
    ?assert(B =:= erlbz2:decompress(erlbz2:compress(B))).
