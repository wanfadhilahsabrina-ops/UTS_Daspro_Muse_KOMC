program NilaiMahasiswa;

uses crt;

var
  nama, nim: string;
  tugas, uts, uas, akhir: real;
  pilihan, jumlah, i, lulus: integer;
  huruf: char;

begin
clrscr;
  jumlah := 0;
  lulus := 0;

  repeat
    writeln;
    writeln('PENGELOLAAN NILAI MAHASISWA');
    writeln('1. Input Nilai');
    writeln('2. Lihat Rekap');
    writeln('3. Keluar');
    write('Pilih menu: ');
    readln(pilihan);

    case pilihan of
      1: begin
           write('Jumlah mahasiswa: ');
           readln(jumlah);
           lulus := 0;

           for i := 1 to jumlah do
           begin
             clrscr;
             writeln;
             writeln('Mahasiswa ke-', i);
             write('NIM: ');
             readln(nim);
             write('Nama: ');
             readln(nama);

             write('Nilai Tugas: ');
             readln(tugas);
             write('Nilai UTS: ');
             readln(uts);
             write('Nilai UAS: ');
             readln(uas);

             if (tugas < 0) or (tugas > 100) or
                (uts < 0) or (uts > 100) or
                (uas < 0) or (uas > 100) then
             begin
               writeln('Nilai tidak valid!');
               break;
             end;

             akhir := tugas * 0.3 + uts * 0.3 + uas * 0.4;

             if akhir >= 85 then
               huruf := 'A'
             else if akhir >= 75 then
               huruf := 'B'
             else if akhir >= 65 then
               huruf := 'C'
             else if akhir >= 50 then
               huruf := 'D'
             else
               huruf := 'E';

             writeln('Nilai Akhir: ', akhir:0:2);
             writeln('Nilai Huruf: ', huruf);

             if akhir >= 60 then
             begin
               writeln('Status: LULUS');
               lulus := lulus + 1;
             end
             else
               writeln('Status: TIDAK LULUS');
           end;

           writeln('Jumlah mahasiswa lulus: ', lulus);
         end;

      2: begin
           writeln('Jumlah mahasiswa: ', jumlah);
           writeln('Jumlah lulus: ', lulus);
         end;

      3: writeln('Program selesai.');

    else
      writeln('Pilihan tidak valid!');
    end;

  until pilihan = 3;

  readln;
end.